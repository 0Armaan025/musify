import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:musify/common/continue_btn.dart';
import 'package:musify/screens/onboarding/onboarding_screen_next.dart';
import 'package:musify/utils/theme.dart';
import 'package:musify/utils/utils.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  String animationPath = "assets/lottie/welcome_animation.json";
  bool doneAlready = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: doneAlready ? 2 : 9), (timer) {
      setState(() {
        doneAlready = true;
        if (animationPath == "assets/lottie/song_animation.json") {
          animationPath = "assets/lottie/welcome_animation.json";
        } else {
          animationPath = "assets/lottie/song_animation.json";
        }
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme().bgColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  width: 290.0,
                  child: DefaultTextStyle(
                    style: GoogleFonts.poppins(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                    child: AnimatedTextKit(
                      pause: const Duration(seconds: 2),
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText('Welecome to The App 😎,',
                            textStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            )),
                        TyperAnimatedText('All songs and no ads!,',
                            textStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            )),
                        TyperAnimatedText('Full Enjoy! 🥳',
                            textStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Lottie.asset(animationPath),
              ),
              const SizedBox(
                height: 30,
              ),
              ContinueButton(
                  bgColor: Colors.purple,
                  textColor: Colors.white,
                  onTap: () {
                    moveScreen(context, OnBoarding_two());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
