 import 'package:flutter/material.dart';

class DataX{
  final String title;
  final String body;

  DataX({required this.title, required this.body});
}


class TestNotificationScreen extends StatelessWidget {
  const TestNotificationScreen({super.key,this.data});
final DataX? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data?.title==""?"null":data!.title),
            Text(data?.body??"null")
          ],
        ),
      ),
    );
  }
}
