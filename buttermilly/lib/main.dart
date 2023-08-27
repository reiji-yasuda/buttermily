import 'package:flutter/material.dart';
import 'deicideproduct.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: MyApp()));
}

// import 'package:flutter/material.dart';
// import 'package:untitled6/bottombar.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //子widgetにデータを渡す
//     return MaterialApp(
//       title: 'Buttermily',
//       theme: ThemeData(),
//       debugShowCheckedModeBanner: false,
//       localizationsDelegates: [],
//       home: BottomNavBar(),
//     );
//   }
// }
