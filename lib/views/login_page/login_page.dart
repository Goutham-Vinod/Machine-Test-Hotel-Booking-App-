import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/constants/images.dart';
import 'package:machine_test/views/home_page/nav_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 50),

// ---------------------- Welcome To Fracspace ---------------------------------
          Text(
            'Hi',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 10),
          Text(
            'Welcome To',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 10),
          Text(
            'FRACSPACE',
            style: TextStyle(
                fontSize: 30,
                color: AppColors.blue1,
                fontWeight: FontWeight.bold),
          ),
// -----------------------------------------------------------------------------

          const SizedBox(height: 50),
// -------------------   Name Field   ------------------------------------------
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline),
              // dev_note : want to use proper icon here
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Your name',
              labelStyle: const TextStyle(color: Colors.black),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
// -----------------------------------------------------------------------------

          const SizedBox(height: 40),
// ------------------------  Password  -----------------------------------------
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.vpn_key_outlined),
              // dev_note : want to use proper icon here
              suffixIcon: const Icon(Icons.visibility_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Password',

              labelStyle: const TextStyle(color: Colors.black),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
// -----------------------------------------------------------------------------
          const SizedBox(height: 20),
// -----------------------  Forget Password ------------------------------------
          Row(children: [
            Icon(
              Icons.check_circle,
              color: AppColors.blue1,
            ),
            SizedBox(width: width * 0.02),
            Text('Remember me'),
            Spacer(),
            Text('Forgot password?')
          ]),
// -----------------------------------------------------------------------------
          SizedBox(height: 30),
// ---------------------------  Login  -----------------------------------------
          SizedBox(
            width: width * 0.9,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePageNavBar()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: const Text(
                  'Log in',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
// -----------------------------------------------------------------------------
          SizedBox(height: 20),
// ---------------------------  Divider  ---------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Divider(thickness: 2),
                width: width * 0.25,
              ),
              SizedBox(width: width * 0.02),
              Text('Or sign up with'),
              SizedBox(width: width * 0.02),
              SizedBox(
                child: Divider(thickness: 2),
                width: width * 0.25,
              ),
            ],
          ),
// -----------------------------------------------------------------------------
          SizedBox(height: 25),
// --------------------- Social Media Login ------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialLoginButton(
                image: Image.asset(
                  AppImages.google,
                ),
              ),
              SocialLoginButton(
                image: Image.asset(
                  AppImages.facebook,
                ),
              ),
              SocialLoginButton(
                image: Image.asset(
                  AppImages.apple,
                ),
              )
            ],
          ),
// -----------------------------------------------------------------------------
          SizedBox(height: 70),
// ----------------------- Signup button ---------------------------------------
          Center(
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Don't have an account yet?",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: " Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ])),
          )
// -----------------------------------------------------------------------------
        ]),
      ),
    );
  }
}

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key, required this.image});

  final Image image;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 50,
        width: width * 0.25,
        decoration: BoxDecoration(
          color: AppColors.blue5,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: image,
        ),
      ),
    );
  }
}
