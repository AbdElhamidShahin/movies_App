import 'package:flutter/material.dart';

import '../../core/constants/styles.dart';

class CustomTextButtonDetails extends StatelessWidget {
  const CustomTextButtonDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),

          color: Colors.white10,
        ),
        height: 70,
        width: double.infinity,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(Icons.play_arrow, size: 38, color: Colors.white),
            SizedBox(width: 8),
            Text(
              "data",
              style: Styles.textStyle24.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
