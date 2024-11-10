import 'dart:convert';

import 'package:fleet_pay/models/auth_token_response.dart';
import 'package:fleet_pay/models/user_type.dart';
import 'package:fleet_pay/providers/auth_provider.dart';
import 'package:fleet_pay/screens/forgot_password.dart';
import 'package:fleet_pay/services/backend.dart';
import 'package:fleet_pay/services/hive.dart';
import 'package:fleet_pay/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email, _password;
  bool obscureText = true;
  late BackendService _backendProvider;
  late AuthProvider _authProvider;

  final GlobalKey<FormState> _formKey = GlobalKey();
  bool loading = false;

  _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      AuthTokenResponse authTokenResponse = await _backendProvider.login(
        username: _email,
        password: _password,
        userType: UserType.USER,
      );
      if (authTokenResponse.code == 200) {
        await hive.setString(
            "authPayload", jsonEncode(authTokenResponse.result!.toJson()));
        if (mounted) {
          await _authProvider.authNavigation(
            context,
            _password,
          );
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(authTokenResponse.error!.toString())));
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

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  "assets/app_bar_logo.png",
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    labelText: "Email",
                    hintText: "Enter your email ",
                  ),
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value == "") {
                      return "Mandatory Field";
                    }
                    if (!emailRegex.hasMatch(value)) {
                      return "Please enter a valid email address";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  obscureText: obscureText,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    labelText: "Password",
                    hintText: "Enter your password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _password = value;
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
              ),
              Align(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/forgot-password");
                  },
                  child: const Text("Forgot Password?"),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  onTap: _login,
                  label: "LOGIN",
                  loading: loading,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
