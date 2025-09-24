import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/core/constants/styles.dart';

import 'CustomListVeiwCaracter.dart';
import 'CustomTextButtonDetails.dart';

class CustomDetailsScreen extends StatelessWidget {
  const CustomDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Details", style: Styles.textStyle30),
              SizedBox(height: 24),

              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 3.5 / 4,
                  child: Image.asset(
                    "assets/images/test.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 24),

              Text("The Dark Kinight", style: Styles.textStyle24),
              SizedBox(height: 24),
              Row(
                children: [
                  Opacity(
                    opacity: .7,

                    child: Text("2009", style: Styles.textStyle20),
                  ),
                  Spacer(),
                  Opacity(
                    opacity: .7,

                    child: Text("5.0", style: Styles.textStyle20),
                  ),
                  SizedBox(width: 6),
                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Color(0xffFFDD4F),
                    size: 18,
                  ),
                ],
              ),
              SizedBox(height: 24),

              CustomTextButtonDetails(),
              SizedBox(height: 24),

              Text(
                "The Demon Slayer Corps are drawn into the Infinity Castle, where Tanjiro, Nezuko, and the Hashira face terrifying Upper Rank demons in a desperate fight as the final battle against Muzan Kibutsuji begins.",
                style: Styles.textStyle16.copyWith(
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 24),
              Text("Cast", style: Styles.textStyle24),
              SizedBox(height: 24),

              CustomListVeiwCaracter(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
