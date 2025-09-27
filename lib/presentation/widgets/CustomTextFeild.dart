import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/core/constants/styles.dart';

class CustomTextFeild extends StatelessWidget {
  final void Function(String) onPressed;

  const CustomTextFeild({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true, // لازم تتفعل
            fillColor: Color(0xFF1b1c1f),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            hintText: 'Search movies and shows',
            hintStyle: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.white70,
            ),
            prefixIcon: IconButton(
              onPressed: () {
                if (onPressed != null) {
                  onPressed!(controller.text);
                }
              },
              icon: const Opacity(
                opacity: .8,
                child: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
              ),
            ),
          ),
          onSubmitted: (value) {
            if (onPressed != null) {
              onPressed!(value);
            }
          },
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(12));
  }
}
