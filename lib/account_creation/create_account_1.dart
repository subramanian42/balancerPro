import 'package:balanacerpro/constants/images.dart';
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
        title: Row(
          children: [
            IconButton(onPressed: () {}, icon: Image.asset(Images.backArrow)),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size(size.width / 3, 1),
          child: Divider(color: Colors.lightBlue, endIndent: size.width / 3),
        ),
      ),
      // body: SizedBox(
      //   width: 100,
      //   height: 100,
      //   child: ColoredBox(color: Colors.cyan),
      // ),
    );
  }
}
