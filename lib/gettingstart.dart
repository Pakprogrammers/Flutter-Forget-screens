import 'package:flutter/material.dart';

import 'app_style.dart';
import 'login_screen.dart';

class GettingStart extends StatefulWidget {
  const GettingStart({super.key});

  @override
  State<GettingStart> createState() => _GettingStartState();
}

class _GettingStartState extends State<GettingStart> {
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
                padding: EdgeInsets.only(top: 250),
                child: Image(image: AssetImage('assets/Logo.png'), width: 150),
              ),
              const SizedBox(
                height: 130,
              ),
              Text('Welcome', style: KEncodeSansBold.copyWith(fontSize: 20)),
              const SizedBox(
                height: 10,
              ),
              Text('Create an account and access thousand \n of cool stuffs',
                  style: KEncodeSansRagular.copyWith(color: KGrey)),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
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
                      child: Text('Getting Started',
                          style: KEncodeSansRagular.copyWith(
                              color: Kwhite, fontSize: 15)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                      style: KEncodeSansRagular.copyWith(color: KGrey)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text('  Log In',
                        style: KEncodeSansBold.copyWith(
                          color: Klightgreen,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
