import 'package:flutter/material.dart';

class BottomSheetIncognito extends StatelessWidget {
  const BottomSheetIncognito({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Button 1'),
          ),
          SizedBox(width: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text('Button 2'),
          ),
          SizedBox(width: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text('Button 3'),
          ),
        ],
      ),
    );
  }
}