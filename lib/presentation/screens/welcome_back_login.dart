import 'package:ferry_easy/constants/constants.dart';
import 'package:ferry_easy/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class WelcomeBackLogin extends StatelessWidget {
  const WelcomeBackLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // ! Background image container
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/login-welcome.png'),
                fit: BoxFit.cover),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              const Text(
                'Welcome Back',
                style: defaultHeadingBold,
              ),
              const Spacer(),
              // ! Username Text Field Form
              const UsernameTextWidget(),
              const SizedBox(
                height: 20,
              ),
              // ! Password Text Field Form

              const PasswordTextField(),
              const SizedBox(height: 20),
              // ! Forgot Password area
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    // ! Added Inkwell onTap function for forgot password
                    // todo: add navigating screen for forgot password
                    onTap: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: ferryPrimaryColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // todo: need to add on tap function for login/signup directory

              const ButtonWidget(
                  buttonTitle: 'Log In',
                  buttonBackgroundColor: ferryPrimaryColor,
                  buttonForegroundColor: Colors.white,
                  buttonSideColor: Colors.transparent),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'or',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const ButtonWidget(
                  buttonTitle: 'Sign Up',
                  buttonBackgroundColor: Colors.transparent,
                  buttonForegroundColor: ferryPrimaryColor,
                  buttonSideColor: ferryPrimaryColor),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

// ! Usename Text widget and Password Text Widget modifiables
// todo : validations and firebase

class UsernameTextWidget extends StatelessWidget {
  const UsernameTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: TextField(
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        decoration: InputDecoration(
          hintText: 'ferryeasy@gmail.com',
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
          // ! White color underline when not tapped
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ferryPrimaryColor),
          ),
          // ! White color underline when tapped and used
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ferryPrimaryColor),
          ),
          // ! Icon beside the the form
          prefixIcon: IconTheme(
            data: IconThemeData(color: ferryPrimaryColor),
            child: Icon(Icons.person),
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: TextField(
        obscureText: true,
        enableSuggestions: true,
        autocorrect: false,
        // ! Pasword Security measures above ^
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
          // ! White color underline when not tapped
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ferryPrimaryColor),
          ),
          // ! White color underline when tapped and used
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ferryPrimaryColor),
          ),
          // ! Icon beside the the form
          prefixIcon: IconTheme(
            data: IconThemeData(color: ferryPrimaryColor),
            child: Icon(Icons.lock),
          ),
        ),
      ),
    );
  }
}
