import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:storeapp/utils/snackbar.dart';

enum Category { Shoes, Bags, Clothes, Accessory }


class StoreUi extends StatelessWidget {
  const StoreUi({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var msg = {

    };

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
                    showSnackBar(context, "msg");
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

