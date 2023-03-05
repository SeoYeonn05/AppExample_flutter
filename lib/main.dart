import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum Category { Shoes, Bags, Clothes, Accessory }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StoreMain(),
    );
  }
}

class StoreMain extends StatelessWidget {
  const StoreMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {

                  },
                  child: const Text("Shoes",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                ),
                Spacer(),
                Text("Bags", style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Text("Clothes", style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Text("Accessory",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Expanded(child: Image.asset("assets/images/bag.jpg", fit: BoxFit.fill)),
          const SizedBox(height: 2),
          Expanded(child: Image.asset("assets/images/bag2.jpg", fit: BoxFit.fill)),
        ],
      ),
    ));
  }
}

void showToast(String message){
  Fluttertoast.showToast(
    msg: message,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    //fontSize: 20
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT
  );
}