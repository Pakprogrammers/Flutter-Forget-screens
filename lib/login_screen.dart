import 'package:flutter/material.dart';
import 'package:pak_programmers/signup_screen.dart';
// import 'package:loginfile/signup_screen.dart';

import 'app_style.dart';
import 'forget_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 100),
                  child:
                      Image(image: AssetImage('assets/Logo.png'), width: 100),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Log In Now',
                    style: KEncodeSansBold.copyWith(fontSize: 20)),
                Text('Please Login to continue using our app',
                    style: KEncodeSansRagular.copyWith(color: KGrey)),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: false,
                            prefixIcon: Icon(
                              Icons.person,
                              color: Klightgreen,
                            ),
                            fillColor: Color.fromARGB(225, 235, 235, 224),
                            filled: true,
                            hintText: 'Full Name',
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: false,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Klightgreen,
                            ),
                            fillColor: Color.fromARGB(225, 235, 235, 224),
                            filled: true,
                            hintText: 'Password',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 200),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: const Color(0xff29a794),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(225, 1, 125, 196),
                            Color.fromARGB(225, 42, 168, 148),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(kBorderRadius)),
                    child: Center(
                      child: Text('Log In',
                          style: KEncodeSansRagular.copyWith(
                              color: Kwhite, fontSize: 15)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don`t have an account?',
                        style: KEncodeSansRagular.copyWith(color: KGrey)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Text('   Sign Up',
                          style: KEncodeSansBold.copyWith(color: Klightgreen)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Or Connect with',
                    style: KEncodeSansBold.copyWith(color: KGrey)),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 30,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage('assets/facebook.png')),
                      Image(image: AssetImage('assets/google.png')),
                      Image(image: AssetImage('assets/twitter.png'))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
