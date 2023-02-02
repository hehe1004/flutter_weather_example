import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Text('Go to SreenB'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/b');
                  }),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.amber),
                child: Text('Go to ScreenC'),
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                },
              )
            ],
          )),
    );
  }
}