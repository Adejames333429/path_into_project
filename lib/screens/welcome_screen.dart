import 'package:flutter/material.dart';
import 'package:login/screens/signin_screen.dart';
import 'package:login/screens/signup_screen.dart';
import 'package:login/widgets/custom_scaffold.dart';
import 'package:login/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
                child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                        text: 'Welcome!\n',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight:FontWeight.w600,
                          color: Colors.white,
                          fontFamily: 'IndieFlower',
                          )),
                          TextSpan(
                            text: '\n OAU Bike Service System',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Outfit',
                            ))
                        ],
                      ))
                )
              )),
          Flexible(
            flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    Expanded(
                        child: WelcomeButton(
                          buttonText: 'Sign In',
                          onTap: SignInScreen(),
                          color: Colors.transparent,
                          textColor: Colors.white,
                        )
                    ),
                    Expanded(
                        child: WelcomeButton(
                          buttonText: 'Sign Up',
                          onTap: SignUpScreen(),
                          color: Colors.red,
                          textColor: Colors.white,
                        )
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
