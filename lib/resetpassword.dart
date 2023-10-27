import 'package:flutter/material.dart';

class ResetView extends StatelessWidget {
  const ResetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Reset Password")),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            ),
            getCard()
          ],
        ));
  }
}

getCard() {
  return Card(
    color: Colors.grey,
    shadowColor: Colors.white,
    elevation: 5.0,
    child: Container(
      height: 200,
      width: 200,
      child: Column(
        children: [
          Image.network(
            "",
            width: double.infinity,
            height: 120,
          ),
          Text(
            "Mango",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    ),
  );
}
