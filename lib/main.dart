import 'package:flutter/material.dart';
import 'package:brew_crew/screens/wrapper.dart';
import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicatifon.
   @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      catchError: (_, __) => null,
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
    // return StreamProvider<MyUser?>.value(
    //   catchError: (_, __) => null,
    //   initialData: null,
    //   value: AuthService().user,
    //   child: MaterialApp(
    //     home:Wrapper(),
    //   ),
    // );
  }
}


