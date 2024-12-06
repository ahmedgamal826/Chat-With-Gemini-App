import 'package:chat_with_gemini_app/features/splash/data/splash_logic.dart';
import 'package:chat_with_gemini_app/features/splash/presentation/views/widgets/animated_text.dart';
import 'package:chat_with_gemini_app/features/splash/presentation/views/widgets/logo_animation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // LogoAnimation(width: width, height: height),
              Lottie.asset(
                'assets/gemini_lottie.json',
                width: width * 0.9,
                height: height * 0.3,
              ),
              const SizedBox(height: 20),
              AnimatedText(
                onFinished: () => SplashLogic.NavigateToChatHomeView(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
