import 'package:firebase_core/firebase_core.dart';
import 'package:fleet_pay/constants/theme.dart';
import 'package:fleet_pay/firebase_options.dart';
import 'package:fleet_pay/providers/auth_provider.dart';
import 'package:fleet_pay/providers/contractor_provider.dart';
import 'package:fleet_pay/providers/transaction_provider.dart';
import 'package:fleet_pay/screens/forgot_password.dart';
import 'package:fleet_pay/screens/home_screen.dart';
import 'package:fleet_pay/screens/login_screen.dart';
import 'package:fleet_pay/screens/splash_screen.dart';
import 'package:fleet_pay/services/backend.dart';
import 'package:fleet_pay/services/firebase.dart';
import 'package:fleet_pay/services/hive.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await hive.init();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  firebaseService.initialize();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => BackendService(
          _,
        ),
      ),
      ChangeNotifierProvider(
        create: (_) => AuthProvider(
          _,
        ),
      ),
      ChangeNotifierProvider(
        create: (_) => ContractorProvider(
          _,
        ),
      ),
      ChangeNotifierProvider(
        create: (_) => TransactionProvider(
          _,
        ),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fleet Pay",
      theme: theme,
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.rootNavigator,
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "/forgot-password": (context) => const ForgotPassword(),
        "/login": (context) => const LoginScreen(),
        "/home": (context) => const HomeScreenProxy(),
      },
    );
  }
}
