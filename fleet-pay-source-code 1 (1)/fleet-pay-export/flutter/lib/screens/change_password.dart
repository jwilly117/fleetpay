import 'package:fleet_pay/models/string_response.dart';
import 'package:fleet_pay/providers/auth_provider.dart';
import 'package:fleet_pay/services/backend.dart';
import 'package:fleet_pay/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class PasswordChange {
  String oldPassword;
  String newPassword;
  String confirmPassword;
  bool obscureNewPassword;
  bool obscureOldPassword;
  bool obscureConfirmPassword;

  bool enableOldPassword;

  PasswordChange({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmPassword,
    this.enableOldPassword = true,
    this.obscureNewPassword = true,
    this.obscureOldPassword = true,
    this.obscureConfirmPassword = true,
  });
}

class ChangePassword extends StatefulWidget {
  final bool isInitialPasswordChange;
  final String? oldPassword;
  const ChangePassword({
    super.key,
    required this.isInitialPasswordChange,
    this.oldPassword,
  });

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  PasswordChange passwordChange = PasswordChange(
    oldPassword: "",
    newPassword: "",
    confirmPassword: "",
  );

  bool loading = false;
  late BackendService _backendProvider;
  late AuthProvider _authProvider;

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    if (widget.oldPassword != null) {
      passwordChange.oldPassword = widget.oldPassword!;
      passwordChange.enableOldPassword = false;
    }
    super.initState();
  }

  _changePassword() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      StringResponse changePasswordResponse =
          await _backendProvider.changePassword(
        oldPassword: passwordChange.oldPassword,
        newPassword: passwordChange.newPassword,
      );

      if (changePasswordResponse.code != 200) {
        if (mounted) {
          setState(() {
            loading = false;
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(changePasswordResponse.error!.toString())));
        }
        return;
      }
      if (widget.isInitialPasswordChange) {
        if (mounted) await _authProvider.authNavigation(context);
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                changePasswordResponse.result!.toString(),
              ),
            ),
          );
        }
      }
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _backendProvider = Provider.of<BackendService>(context);
    _authProvider = Provider.of<AuthProvider>(context);
    final user = _authProvider.user;
    return Scaffold(
      appBar: widget.isInitialPasswordChange
          ? null
          : AppBar(
              title: const Text("Change Password"),
            ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.isInitialPasswordChange) ...[
                  const SizedBox(height: 20),
                  Text(
                    "Welcome to FleetPay",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "${user?.name}",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SvgPicture.asset(
                    "assets/change_password.svg",
                    height: 100,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Please change your password to continue",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1D1B20),
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                if (passwordChange.enableOldPassword) ...[
                  TextFormField(
                    obscureText: passwordChange.obscureOldPassword,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordChange.obscureOldPassword =
                                !passwordChange.obscureOldPassword;
                          });
                        },
                        icon: Icon(
                          passwordChange.obscureOldPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      fillColor: Theme.of(context).focusColor,
                      hintText: "Enter old password",
                      labelText: "Old Password",
                    ),
                    onChanged: (value) {
                      setState(() {
                        passwordChange.oldPassword = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value == "") {
                        return "Mandatory Field";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                ],
                TextFormField(
                  obscureText: passwordChange.obscureNewPassword,
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).focusColor,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordChange.obscureNewPassword =
                              !passwordChange.obscureNewPassword;
                        });
                      },
                      icon: Icon(
                        passwordChange.obscureNewPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    hintText: "Enter new password",
                    labelText: "New Password",
                  ),
                  onChanged: (value) {
                    setState(() {
                      passwordChange.newPassword = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value == "") {
                      return "Mandatory Field";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    if (value == passwordChange.oldPassword) {
                      return "New password must be different from old password";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: passwordChange.obscureConfirmPassword,
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).focusColor,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordChange.obscureConfirmPassword =
                              !passwordChange.obscureConfirmPassword;
                        });
                      },
                      icon: Icon(
                        passwordChange.obscureConfirmPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    hintText: "Same password again",
                    labelText: "Confirm Password",
                  ),
                  onChanged: (value) {
                    setState(() {
                      passwordChange.newPassword = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value == "") {
                      return "Mandatory Field";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    if (value != passwordChange.newPassword) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),
                const Spacer(),
                CustomButton(
                  onTap: _changePassword,
                  loading: loading,
                  label: "Change Password",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
