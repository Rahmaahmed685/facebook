import 'package:flutter/material.dart';

class NotifacationScreen extends StatefulWidget {
  const NotifacationScreen({super.key});

  @override
  State<NotifacationScreen> createState() => _NotifacationScreenState();
}

class _NotifacationScreenState extends State<NotifacationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('It is a second layout tab, which is responsible for taking pictures from your mobile.',
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}
