import 'package:flutter/material.dart';
import 'package:oak_awe/signupui/signup.dart';
import 'package:oak_awe/style/texts_theme_style.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  static bool _passwordVisible = false;

  // late String _password;

  void _logInPagetogglePassword() {
    setState(
      () {
        _passwordVisible = !_passwordVisible;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  //The Whole Code For Body
  _body() {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                  left: 30,
                  top: 20,
                ),
                child: _loginPageWelcomeBackText(),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                  left: 30,
                  top: 5,
                ),
                child: _logInPageRegisterText(),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 30,
                ),
                child: _logInPageEmailAddressTextInField(),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: _logInPagePasswordTextInField(),
              ),
              Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.only(
                  top: 10,
                  right: 20,
                  bottom: 40,
                ),
                child: logInPageForgetPasswordInkwell(),
              ),
              Container(
                child: _logInPageButton(),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  top: 40,
                ),
                child: _logInPageOrContinueText(),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20),
                child: _loginPageSocialLogoImage(),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 40),
                child: _logInPageCreateAccoutText(),
              )
            ],
          ),
        ),
      ),
    );
  }

  //Welcome Back Text
  _loginPageWelcomeBackText() {
    return const Text('Welcome Back!', style: TextThemeStyles.logInHeaderText);
  }

  //Register... Text
  _logInPageRegisterText() {
    return const Text('Fill yours detail or register\nyour account to continue',
        style: TextThemeStyles.logInSecondaryHeaderText);
  }

  //Text In Field For Email Address
  _logInPageEmailAddressTextInField() {
    return TextFormField(
      cursorColor: const Color(0xFFdb0304),
      decoration: const InputDecoration(
        fillColor: Color(0xFFe5e5e5),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        prefixIcon: Icon(
          Icons.email_outlined,
          color: Color(0xFF6A6A6A),
        ),
        labelText: 'Email Address',
        floatingLabelStyle: TextThemeStyles.logInEmailAddressLabelText,
        hintText: 'Enter Email Address',
      ),
    );
  }

  //Text In Field For Password
  _logInPagePasswordTextInField() {
    return TextFormField(
      obscureText: !_passwordVisible,
      enableSuggestions: false,
      autocorrect: false,
      cursorColor: const Color(0xFFdb0304),
      decoration: InputDecoration(
        labelText: 'Password',
        floatingLabelStyle: TextThemeStyles.logInPasswordLabelText,
        hintText: 'Enter your password',
        fillColor: const Color(0xFFe5e5e5),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        prefixIcon: const Icon(
          Icons.lock_outline,
          color: Color(0xFF6A6A6A),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            _logInPagetogglePassword();
          },
          icon: const Icon(
            Icons.remove_red_eye,
            color: Color(0xFF6A6A6A),
          ),
        ),
      ),
    );
  }

  //Inkwell For Forget Password
  logInPageForgetPasswordInkwell() {
    return InkWell(
      onTap: () {},
      child: const Text(
        'Forget Password!',
        style: TextThemeStyles.logInForgetPasswordText,
      ),
    );
  }

  //LoginPage Button
  _logInPageButton() {
    return MaterialButton(
      height: 54,
      minWidth: 335,
      color: const Color(0xFFdb0304),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignUp(),
          ),
        );
      },
      child: const Text(
        'LOG IN',
        style: TextThemeStyles.loginBtnText,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  //Or Continue With Text
  _logInPageOrContinueText() {
    return const Text(
      '-- Or Continue with --',
      style: TextThemeStyles.logInOrContinueWithText,
    );
  }

  //Social Logo Image Asset
  _loginPageSocialLogoImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/google_login_logo.png',
          width: 60,
          height: 60,
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          'assets/facebook_login_logo.png',
          width: 60,
          height: 60,
        ),
      ],
    );
  }

  //New User? Create Account Text
  _logInPageCreateAccoutText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'New Users?  ',
          style: TextThemeStyles.logInNewUserText,
        ),
        InkWell(
          child: const Text(
            'Create Account',
            style: TextThemeStyles.logInCreateAccountInkWellText,
          ),
          onTap: () {
            setState(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUp(),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
