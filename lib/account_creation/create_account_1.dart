import 'package:flutter/material.dart';

class CreateAccount1 extends StatefulWidget {
  const CreateAccount1({super.key});

  @override
  State<CreateAccount1> createState() => _CreateAccount1State();
}

class _CreateAccount1State extends State<CreateAccount1> {
  // this is to hide the progress inidecator once the account is created
  bool isSignUpComplete = false;

  @override
  Widget build(BuildContext context) {
    // this is to retrieve the device screen size
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(size.width / 3, 0),
          child: Divider(color: Colors.lightBlue, endIndent: size.width / 1.25),
        ),
      ),
    );
  }
}
