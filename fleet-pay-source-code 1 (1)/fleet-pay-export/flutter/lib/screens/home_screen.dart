import 'package:fleet_pay/models/contractor.dart';
import 'package:fleet_pay/models/contractor_dashboard_summary.dart';
import 'package:fleet_pay/models/new_fund_request.dart';
import 'package:fleet_pay/models/transaction.dart';
import 'package:fleet_pay/providers/contractor_provider.dart';
import 'package:fleet_pay/screens/final_confirmation_screen.dart';
import 'package:fleet_pay/screens/help_and_support_screen.dart';
import 'package:fleet_pay/screens/select_amount_screen.dart';
import 'package:fleet_pay/screens/transaction_history.dart';
import 'package:fleet_pay/screens/transaction_successfull_screen.dart';
import 'package:fleet_pay/screens/transaction_summary_screen.dart';
import 'package:fleet_pay/screens/understanding_transaction_screen.dart';
import 'package:fleet_pay/services/firebase.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:fleet_pay/widgets/custom_app_bar.dart';
import 'package:fleet_pay/widgets/custom_button.dart';
import 'package:fleet_pay/widgets/custom_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';

class HomeScreenProxy extends StatelessWidget {
  const HomeScreenProxy({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (NavigationService.homeNavigator.currentState!.canPop()) {
          NavigationService.homeNavigator.currentState!.pop(context);
        } else {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: const CustomAppBar(),
        body: Center(
          child: SafeArea(
            child: Navigator(
              key: NavigationService.homeNavigator,
              initialRoute: "/home",
              observers: [MyNavigatorObserver()],
              onGenerateRoute: (settings) {
                if (settings.name == "/home") {
                  return MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                    settings: const RouteSettings(name: "/home"),
                  );
                }
                if (settings.name == "/transactionHistory") {
                  return MaterialPageRoute(
                    builder: (context) => const TransactionHistory(),
                    settings: const RouteSettings(name: "/transactionHistory"),
                  );
                }
                if (settings.name == "/helpAndSupport") {
                  return MaterialPageRoute(
                    builder: (context) => const HelpAndSupportScreen(),
                    settings: const RouteSettings(name: "/helpAndSupport"),
                  );
                }
                if (settings.name == "/understandingTransaction") {
                  return MaterialPageRoute(
                    builder: (context) =>
                        const UnderstandingTransactionScreen(),
                    settings:
                        const RouteSettings(name: "/understandingTransaction"),
                  );
                }
                if (settings.name == "/selectAmount") {
                  return MaterialPageRoute(
                    builder: (context) => const SelectAmountScreen(),
                    settings: const RouteSettings(name: "/selectAmount"),
                  );
                }
                if (settings.name == "/transactionSummary") {
                  NewFundRequest newFundRequest =
                      settings.arguments as NewFundRequest;
                  return MaterialPageRoute(
                    builder: (context) => TransactionSummaryScreen(
                      newFundRequest: newFundRequest,
                    ),
                    settings: const RouteSettings(name: "/transactionSummary"),
                  );
                }
                if (settings.name == "/finalConfimation") {
                  return MaterialPageRoute(
                    builder: (context) => const FinalConfirmationScreen(),
                    settings: const RouteSettings(name: "/finalConfimation"),
                  );
                }
                if (settings.name == "/transactionSuccessful") {
                  Transaction transaction = settings.arguments as Transaction;
                  return MaterialPageRoute(
                    builder: (context) => TransactionSuccessfulScreen(
                      transaction: transaction,
                    ),
                    settings:
                        const RouteSettings(name: "/transactionSuccessful"),
                  );
                }

                return null;
              },
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, double> dataMap = {};
  late ContractorProvider contractorProvider;
  bool isAvailableFundZero = false;
  final colorList = <Color>[];
  ContractorDashboardSummary? companyDashboardSummary;

  foregroundMessageInvoker() {
    firebaseService.listenToMessage();

    firebaseService.messageStreamController!.listen(
      (message) {
        if (message.notification != null) {
          ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              backgroundColor: Theme.of(context).colorScheme.primary,
              content: Text(
                message.notification?.body,
                style: const TextStyle(color: Colors.white),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                    child: const Text(
                      "Dismiss",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          );
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (callback) async {
        await getDashBoard();
        await firebaseService.messaging!.requestPermission(
          alert: true,
          announcement: false,
          badge: true,
          carPlay: false,
          criticalAlert: false,
          provisional: false,
          sound: true,
        );

        foregroundMessageInvoker();
      },
    );
  }

  Future<void> getDashBoard() async {
    Contractor contractor = await contractorProvider.getContractor();
    companyDashboardSummary =
        await contractorProvider.getDashboard(contractor.id);

    if (companyDashboardSummary!.approvedFunds > 0) {
      dataMap["Approved"] = companyDashboardSummary!.approvedFunds.toDouble();
      colorList.add(Colors.green);
    }
    if (companyDashboardSummary!.pendingFunds > 0) {
      dataMap["Pending"] = companyDashboardSummary!.pendingFunds.toDouble();
      colorList.add(Colors.amber);
    }
    dataMap["Available"] = companyDashboardSummary!.availableFund.toDouble();
    colorList.add(Colors.black.withOpacity(.1));
    isAvailableFundZero = companyDashboardSummary!.availableFund == 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    contractorProvider = Provider.of<ContractorProvider>(context);
    if (companyDashboardSummary == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: getDashBoard,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 40,
                    ),
                    PieChart(
                      chartRadius: 250,
                      ringStrokeWidth: 40,
                      centerText:
                          "\$${companyDashboardSummary!.availableFund}\nAvailable Funds",
                      centerTextStyle: Theme.of(context).textTheme.titleMedium,
                      dataMap: dataMap,
                      chartType: ChartType.ring,
                      colorList: colorList,
                      initialAngleInDegree: 270,
                      chartValuesOptions: const ChartValuesOptions(
                        chartValueBackgroundColor: Colors.transparent,
                        showChartValueBackground: true,
                        showChartValuesOutside: true,
                        showChartValues: false,
                        decimalPlaces: 0,
                      ),
                      legendOptions: const LegendOptions(
                          showLegends: true,
                          legendPosition: LegendPosition.bottom,
                          showLegendsInRow: true),
                      totalValue:
                          companyDashboardSummary!.totalFunds.toDouble(),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    if (companyDashboardSummary!.availableFund == 0) ...[
                      Text(
                        """You've accessed all of your currently available funds for this pay cycle. 
                  
Please check back after the next pay cycle begins to access additional funds. 
                  
We're here to support you every step of the way!""",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                    RichText(
                      text: TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            NavigationService.rootNavigator.currentState!
                                .push(MaterialPageRoute(
                              builder: (_) => const TransactionHistory(),
                            ));
                          },
                        text: "View Transaction History",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: const Color(0xff29ABE2),
                              fontSize: 14,
                            ),
                      ),
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
            ),
          ),
          if (!isAvailableFundZero)
            CustomButton(
              onTap: () {
                Navigator.of(NavigationService.homeNavigator.currentContext!)
                    .pushNamed(
                  "/understandingTransaction",
                );
              },
              label: "Request Fund",
            )
        ],
      ),
    );
  }
}

class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // print('Pushed route: ${route.settings.name}');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // print('Popped route: ${route.settings.name}');
    super.didPop(route, previousRoute);
  }
}
