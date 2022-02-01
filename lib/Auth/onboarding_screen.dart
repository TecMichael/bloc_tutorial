import 'dart:ui';

// import 'package:find_cribs_app/screens/sign_up_screen.dart';
import 'package:find_cribs_app/Auth/sign_up_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final introKey = GlobalKey<IntroductionScreenState>();
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const SignUpScreen(),
      ),
    );
  }

  Widget _buildImage(String assetName, [double width = 280]) {
    return Image.asset('assets/$assetName', fit: BoxFit.cover,);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final bodyStyle = const TextStyle(fontSize: 19.0, color: Color(0xffFEC121));

    final pageDecoration = PageDecoration(
      titleTextStyle: const TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.w700,
        color: Color(0xffFEC121),
      ),
      bodyTextStyle: bodyStyle,
      titlePadding: const EdgeInsets.only(bottom: 4),
      descriptionPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0),
      pageColor: const Color(0xFFFFFFFF),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: const Color(0xFFFFFFFF),
      pages: [
        // PageViewModel(
        //   title: "WELCOME TO COETER",
        //   body: "Learning made easy!",
        //   image: _buildImage('pen4.gif'),
        //   decoration: pageDecoration,
        // ),
        PageViewModel(
          title: "Learn as you go!",
          body:
              "Download all course materials and study past questions without stress",
          image: Image.asset('assets/onboard1.png',),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Chat with Tutors",
          body: "Chat with tutors online 24/7  ",
          image: Image.asset('assets/onboard2.png', width: 0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Check result",
          body: "Check and download result online",
          image: Image.asset('assets/onboard3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip',
          style: TextStyle(
            color: Color(0xffFEC121),
          )),
      next: const Icon(
        Icons.arrow_forward,
        color: Color(0xffFEC121),
      ),
      done: const Text(
        'Done',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xffFEC121),
        ),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: const Color(0xffFEC121).withOpacity(0.4),
        activeColor: const Color(0xFFFFBB00),
        activeSize: const Size(22.0, 10.0),
        activeShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
