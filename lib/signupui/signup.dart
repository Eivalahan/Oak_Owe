import 'package:flutter/material.dart';
import 'package:oak_awe/loginui/login.dart';
import 'package:oak_awe/mainui/main.dart';
import 'package:oak_awe/style/texts_theme_style.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  static bool _signUpPagePasswordVisible = false;

  void _togglePassword() {
    setState(
      () {
        _signUpPagePasswordVisible = !_signUpPagePasswordVisible;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 10, top: 5),
              child: _backToPreviousPge(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                left: 30,
                top: 20,
              ),
              child: _signUpPageRegisterAccountText(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                left: 30,
                top: 5,
              ),
              child: _signUpPageDetailText(),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
              ),
              child: _signUpPageUserNameTextInField(),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              child: _signUpPageEmailAddressTextInField(),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              child: _signUpPagePasswordTextInField(),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              child: _signUpPageConfirmPasswordTextInField(),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              child: _signUpPageRegisterButton(),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                top: 40,
              ),
              child: _signUpPageOrContinueText(),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 20),
              child: _signUpPageSocialLogoImage(),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 20),
              child: _signUpPageAlreadyHaveAccountText(),
            )
          ],
        ),
      ),
    );
  }

  _backToPreviousPge() {
    return IconButton(
      onPressed: () {
        setState(
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LogIn(),
              ),
            );
          },
        );
      },
      icon: const Icon(
        (Icons.chevron_left),
        size: 40.5,
        color: Color(0xFF1A1D1E),
      ),
    );
  }

  //Welcome Back Text
  _signUpPageRegisterAccountText() {
    return const Text('Register Account',
        style: TextThemeStyles.signUpHeaderText);
  }

  //Register... Text
  _signUpPageDetailText() {
    return const Text('Fill yours details to create\nyour account',
        style: TextThemeStyles.signUpSecondaryHeaderText);
  }

  //Text In Field For User Name
  _signUpPageUserNameTextInField() {
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
        labelText: 'User Name',
        floatingLabelStyle: TextThemeStyles.signUpUserNameText,
        hintText: 'Enter User Name',
      ),
    );
  }

  //Text In Field For Email Address
  _signUpPageEmailAddressTextInField() {
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
        floatingLabelStyle: TextStyle(
          color: Color(0xFFdb0304),
        ),
        hintText: 'Enter Email Address',
      ),
    );
  }

  //Text In Field For Password
  _signUpPagePasswordTextInField() {
    return TextFormField(
      obscureText: !_signUpPagePasswordVisible,
      enableSuggestions: false,
      autocorrect: false,
      cursorColor: const Color(0xFFdb0304),
      decoration: InputDecoration(
        labelText: 'Password',
        floatingLabelStyle: TextThemeStyles.signUpPasswordLabelText,
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
            _togglePassword();
          },
          icon: const Icon(
            Icons.remove_red_eye,
            color: Color(0xFF6A6A6A),
          ),
        ),
      ),
    );
  }

  //Text In Field For Confirm Password
  _signUpPageConfirmPasswordTextInField() {
    return TextFormField(
      obscureText: !_signUpPagePasswordVisible,
      enableSuggestions: false,
      autocorrect: false,
      cursorColor: const Color(0xFFdb0304),
      decoration: const InputDecoration(
        labelText: 'Retype Your Password',
        floatingLabelStyle: TextThemeStyles.signUpPasswordLabelText,
        hintText: 'Confirm Your password',
        fillColor: Color(0xFFe5e5e5),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        prefixIcon: Icon(
          Icons.lock_outline,
          color: Color(0xFF6A6A6A),
        ),
        // suffixIcon: IconButton(
        //   onPressed: () {
        //     _togglePassword();
        //   },
        //   icon: const Icon(
        //     Icons.remove_red_eye,
        //     color: Color(0xFF6A6A6A),
        //   ),
        // ),
      ),
    );
  }

  //LoginPage Register Button
  _signUpPageRegisterButton() {
    return MaterialButton(
      height: 54,
      minWidth: 335,
      color: const Color(0xFFdb0304),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyApp(),
          ),
        );
      },
      child: const Text(
        'REGISTER',
        style: TextThemeStyles.signUpregisterBtnText,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  //Or Continue With Text
  _signUpPageOrContinueText() {
    return const Text(
      '-- Or Continue with --',
      style: TextThemeStyles.signUpOrContinueWithText,
    );
  }

  //Social Logo Image Asset
  _signUpPageSocialLogoImage() {
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

  //Already Have Account? Log In Text
  _signUpPageAlreadyHaveAccountText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already Have Account?  ',
          style: TextThemeStyles.logInNewUserText,
        ),
        InkWell(
          child: const Text(
            'Log In',
            style: TextThemeStyles.signUPLogInInkWellText,
          ),
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LogIn()));
            });
          },
        ),
      ],
    );
  }
}
