import 'package:fleet_pay/services/backend.dart';
import 'package:fleet_pay/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum ForgotPasswordState {
  Email,
  OTP,
  Password,
}

class ForgotPasswordProvider extends ChangeNotifier {
  final BackendService _backendService;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String _email = "", _otp = "", _password = "";
  String? _requestId;
  ForgotPasswordState state = ForgotPasswordState.Email;

  set email(String value) {
    _email = value;
    disabled = !emailRegex.hasMatch(value);
    notifyListeners();
  }

  BuildContext context;

  bool loading = false, disabled = true;
  ForgotPasswordProvider(this.context)
      : _backendService = Provider.of<BackendService>(context, listen: false);

  void process() {
    switch (state) {
      case ForgotPasswordState.Email:
        sendOtp();
        break;
      case ForgotPasswordState.OTP:
        verifyOtp();
        break;
      case ForgotPasswordState.Password:
        resetPassword();
        break;
    }
  }

  void sendOtp() async {
    if (formKey.currentState!.validate()) {
      loading = true;
      notifyListeners();
      final resp = await _backendService.sendForgotPasswordOtp(email: _email);
      loading = false;
      notifyListeners();
      if (resp.code == 200) {
        state = ForgotPasswordState.OTP;
        _requestId = resp.result!;
        notifyListeners();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Password reset link sent to your email"),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(resp.error!),
          ),
        );
      }
    }
  }

  void verifyOtp() async {
    if (formKey.currentState!.validate()) {
      loading = true;
      notifyListeners();
      final resp = await _backendService.validateForgotPasswordOtp(
        requestId: _requestId!,
        token: _otp,
      );
      loading = false;
      notifyListeners();
      if (resp.code == 200) {
        state = ForgotPasswordState.Password;
        notifyListeners();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(resp.error!),
          ),
        );
      }
    }
  }

  void resetPassword() async {
    if (formKey.currentState!.validate()) {
      loading = true;
      notifyListeners();
      final resp = await _backendService.changePasswordWithOtp(
        requestId: _requestId!,
        token: _otp,
        newPassword: _password,
      );
      loading = false;
      notifyListeners();
      if (resp.code == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Password reset successful"),
          ),
        );
        Navigator.of(context).pop();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(resp.error!),
          ),
        );
      }
    }
  }
}

RegExp emailRegex = RegExp(
  r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
);

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ForgotPasswordProvider>(
      create: (context) => ForgotPasswordProvider(context),
      builder: (context, child) => Consumer<ForgotPasswordProvider>(
        builder: (context, provider, child) => Scaffold(
          appBar: AppBar(
            title: const Text("Forgot Password"),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SafeArea(
              child: Form(
                key: provider.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (provider.state == ForgotPasswordState.Email) ...[
                      const SizedBox(height: 20),
                      Text(
                        "Enter your email address to reset your password. You will receive an OTP to verify your email address",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        key: const ValueKey("email"),
                        autofocus: true,
                        readOnly: provider.state != ForgotPasswordState.Email,
                        decoration: const InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email address",
                        ),
                        onFieldSubmitted: (_) => provider.process(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email address";
                          }
                          if (!emailRegex.hasMatch(value)) {
                            return "Please enter a valid email address";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          provider.email = value;
                        },
                      ),
                    ],
                    if (provider.state == ForgotPasswordState.OTP) ...[
                      const SizedBox(height: 20),
                      Text(
                        "Please enter the OTP sent to your email",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        key: const ValueKey("otp"),
                        autofocus: provider.state == ForgotPasswordState.OTP,
                        readOnly: provider.state != ForgotPasswordState.OTP,
                        decoration: const InputDecoration(
                          labelText: "OTP",
                          hintText: "Enter the OTP sent to your email",
                        ),
                        onFieldSubmitted: (_) => provider.process(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter the OTP sent to your email";
                          }

                          if (value.length != 6) {
                            return "Please enter a valid OTP";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          provider._otp = value;
                        },
                      ),
                    ],
                    if (provider.state == ForgotPasswordState.Password) ...[
                      const SizedBox(height: 20),
                      Text(
                        "All set! Enter your new password",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        key: const ValueKey("password"),
                        autofocus:
                            provider.state == ForgotPasswordState.Password,
                        decoration: const InputDecoration(
                          labelText: "New Password",
                          hintText: "Enter your new password",
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter a password";
                          }

                          if (value.length < 6) {
                            return "Please enter a password of at least 6 characters";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          provider._password = value;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        key: const ValueKey("confirm-password"),
                        autofocus: true,
                        decoration: const InputDecoration(
                          labelText: "Confirm Password",
                          hintText: "Just a double check",
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please confirm your password";
                          }

                          if (value != provider._password) {
                            return "Passwords do not match";
                          }
                          return null;
                        },
                      ),
                    ],
                    const Spacer(),
                    CustomButton(
                      onTap: provider.process,
                      loading: provider.loading,
                      disabled: provider.disabled,
                      label: "Continue",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
