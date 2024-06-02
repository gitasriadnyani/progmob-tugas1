import 'package:flutter/material.dart';
import 'package:tugas1/pages/login_page.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

// final myStorage = GetStorage();
// myStorage.write('myText', 'This text is saved in local storage');
// return; Scaffold(
//   body: Center(child: Text(myStorage.read('myText')),)
// );
