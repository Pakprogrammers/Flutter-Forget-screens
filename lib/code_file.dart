import 'package:flutter/material.dart';

import 'Newpasswordfile.dart';
import 'app_style.dart';

class CodeFile extends StatefulWidget {
  const CodeFile({Key? key}) : super(key: key);

  @override
  State<CodeFile> createState() => _CodeFileState();
}

class _CodeFileState extends State<CodeFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewPassword()));
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
              child: Text('Send',
                  style: KEncodeSansRagular.copyWith(
                      color: Kwhite, fontSize: 15)),
            ),
          ),
        ),
      ),
    );
  }
}
