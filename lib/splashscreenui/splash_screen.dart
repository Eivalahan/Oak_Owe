import 'package:flutter/material.dart';
import 'package:oak_awe/loginui/login.dart';
import 'package:oak_awe/style/texts_theme_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const SplashScreenPage(),
    );
  }
}

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20, top: 10, right: 10, bottom: 0),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/oak_awe_logo.png'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: const Text(
                        "Oak Awe Institute",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        'assets/img.png',
                        width: double.infinity,
                        height: 317,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Develop a\npassion for\nlearning",
                        style: TextStyle(
                          fontSize: 34,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 12),
                      child: const Text(
                        'If you do ,u will never cease to grow',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF6A6A6A),
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: MaterialButton(
                        elevation: 4,
                        height: 54,
                        minWidth: 261,
                        color: const Color(0xFFdb0304),
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LogIn(),
                            ),
                          );
                        },
                        child: const Text(
                          "Let's Get Started   -->",
                          style: TextThemeStyles.splashScreenBtnText,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
