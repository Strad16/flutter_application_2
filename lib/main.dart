import 'package:flutter/material.dart';
import 'package:flutter_application_2/latihan/main_screen.dart';

import 'my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter from dicoding',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MainScreen(),
    );
  }
}
// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.blue,
//         appBar: AppBar(title: Text("E")),
//         body: Center(child: Text("doki", 
//         maxLines: 2,
//         overflow: TextOverflow.ellipsis,
//         ),
//         ),
//       ),
//     );
//   }
// }