import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/styles.dart';

class CustomListVeiwItem extends StatelessWidget {
  CustomListVeiwItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: SizedBox(
        width: 180,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Image.asset("assets/images/test.jpeg", fit: BoxFit.fill),
              ),
            ),

            Text(
              "Inception",
              style: Styles.textStyle18,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              "2008",
              style: Styles.textStyle16.copyWith(color: Colors.grey),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
