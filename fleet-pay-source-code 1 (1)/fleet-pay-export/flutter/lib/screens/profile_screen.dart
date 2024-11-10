import 'package:fleet_pay/providers/contractor_provider.dart';
import 'package:fleet_pay/screens/change_password.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    final contractorProvider = context.read<ContractorProvider>();
    var contractor = contractorProvider.contractor;
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          ListBody(
            children: [
              listProfileInfo(
                "Company Information",
                [
                  TileData(
                    title: contractor!.name,
                    leadingIcon: const Icon(Icons.person),
                  ),
                  TileData(
                    title: contractor.phoneNumbers.join(", "),
                    leadingIcon: const Icon(Icons.phone),
                  ),
                  TileData(
                    title: contractor.emails.join(", "),
                    leadingIcon: const Icon(Icons.email),
                  ),
                ],
              ),
              const Divider(),
              listProfileInfo(
                "Payement Structure",
                [
                  TileData(
                    title: contractor.paymentStructure.paymentInterval.name,
                    subtitle: "Payment Interval",
                    leadingIcon: const Icon(Icons.sync),
                  ),
                  TileData(
                    title: DateFormat("MM-dd-yyyy")
                        .format(contractor.paymentStructure.cycleStartDate),
                    subtitle: "Start Date",
                    leadingIcon: const Icon(Icons.date_range),
                  ),
                  TileData(
                    title: DateFormat("MM-dd-yyyy").format(
                        contractor.paymentStructure.cycleEndDate ??
                            DateTime.now()),
                    subtitle: "End Date",
                    leadingIcon: const Icon(Icons.date_range),
                  ),
                ],
              ),
              const Divider(),
              ListTile(
                title: const Text("Change Password"),
                leading: const Icon(Icons.lock),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  navigateToPage(
                    context: context,
                    pageName: const ChangePassword(
                      isInitialPasswordChange: false,
                    ),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class TileData {
  String title;
  String? subtitle;
  Widget? leadingIcon;
  TileData({required this.title, this.subtitle, this.leadingIcon});
}

Widget listProfileInfo(String? mainHeader, List<TileData> datas) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        title: Text(mainHeader!),
      ),
      ...datas.map(
        (data) => ListTile(
          title: Text(
            data.title,
          ),
          dense: true,
          leading: data.leadingIcon,
          subtitle: data.subtitle == null ? null : Text(data.subtitle!),
        ),
      ),
    ],
  );
}
