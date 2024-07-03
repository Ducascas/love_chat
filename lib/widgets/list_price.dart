import 'package:flutter/material.dart';
import 'package:love_chat/core/core.dart';

class ListPrice extends StatelessWidget {
  const ListPrice({super.key, required this.itemCount, required this.price});

  final int itemCount;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$itemCount',
              style: AppTextStyle.large,
            ),
            const SizedBox(width: 8),
            const SizedBox(
                width: 30,
                height: 12,
                child: Image(
                  image: AppIcons.glass,
                  fit: BoxFit.fill,
                ))
          ],
        ),
        Text(
          '$price  Р',
          style: AppTextStyle.large,
        ),
      ],
    );
  }
}
