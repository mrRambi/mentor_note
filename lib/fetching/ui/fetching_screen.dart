import 'package:flutter/material.dart';

class FetchingScreen extends StatelessWidget {
  const FetchingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            child: Text('Fetch Data'),
            color: Colors.blue,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
