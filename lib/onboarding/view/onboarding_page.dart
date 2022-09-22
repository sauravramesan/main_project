import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:main_project/sign_signup/view/signin_page.dart';
import 'package:main_project/utils/images.dart';
import 'package:main_project/utils/text.dart';
import '../../utils/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.black,
        pages: [
          PageViewModel(
            title: "The largest network of sports facilities",
            body: turfTextBody,
            image: onBoardImage(
              path: turfImage,
              width: 275,
            ),
            decoration: getPageDecoration(
              colors: kOnBoard1,
            ),
          ),
          PageViewModel(
            title: "Football is the most popular sport in the world",
            body: footballTextBody,
            image: onBoardImage(
              path: footballImage,
              width: 275,
            ),
            decoration: getPageDecoration(
              colors: kOnBoard2,
            ),
          ),
          PageViewModel(
            title: "About the Sport of Badminton",
            body: badmintonTextBody,
            image: onBoardImage(
              path: badmintonImage,
              width: 275,
            ),
            decoration: getPageDecoration(
              colors: kOnBoard3,
            ),
          ),
          PageViewModel(
            title: "History and speciality of Cricket",
            body: cricketTextBody,
            image: onBoardImage(
              path: cricketImage,
              width: 275,
            ),
            decoration: getPageDecoration(
              colors: kOnBoard4,
            ),
          ),
          PageViewModel(
            title:
                "Time plays a key role in sports for athletes and broadcasters",
            body: clockTextBody,
            image: onBoardImage(
              path: colockImage,
              width: 215,
            ),
            decoration: getPageDecoration(
              colors: kOnBoard5,
            ),
          ),
        ],
        done: const Text(
          "Let's go",
          style: TextStyle(color: Colors.white),
        ),
        onDone: () => gotoSignIn(context),
        next: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        animationDuration: 1000,
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(color: Colors.white),
        ),
        dotsDecorator: getDotDecoration(),
        isProgress: true,
        showNextButton: true,
        freeze: false,
        curve: Curves.decelerate,
      ),
    );
  }

  Widget onBoardImage({required String path, required double width}) => Center(
        child: Image.asset(
          path,
          width: width,
        ),
      );
  PageDecoration getPageDecoration({required Color colors}) => PageDecoration(
        titleTextStyle: GoogleFonts.raleway(
          fontSize: 25,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        bodyTextStyle: GoogleFonts.raleway(
          fontSize: 12,
          color: Colors.grey.shade900,
          fontWeight: FontWeight.w300,
        ),
        imagePadding: const EdgeInsets.all(24),
        pageColor: colors,
      );
  void gotoSignIn(context) => Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const SignInPage()));
  DotsDecorator getDotDecoration() => DotsDecorator(
        colors: [
          kOnBoard1,
          kOnBoard2,
          kOnBoard3,
          kOnBoard4,
          kOnBoard5,
        ],
        activeColors: [
          kOnBoard1,
          kOnBoard2,
          kOnBoard3,
          kOnBoard4,
          kOnBoard5,
        ],
        size: const Size(10, 10),
        activeSize: const Size(20, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      );
}
