import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab10/Service/auth.dart';
import 'package:lab10/combonent/CustomButton.dart';
import 'package:lab10/combonent/CustomTextfiled.dart';
import 'package:lab10/rigester/Signin.dart';

class dashboard extends StatefulWidget {
  dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final _formkeyemail = GlobalKey<FormState>();

  final _formkeypassword = GlobalKey<FormState>();

  final newEmaill = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Email is:',
                        style: TextStyle(fontSize: 20),
                      ),
                      // TextField(
                      //   onChanged: (Value) {
                      //     setState(() {
                      //       emailController.text;
                      //     });
                      //   },
                      // ),

                      Text(
                        emailController.text,
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
              ),
              Container(
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFormField(
                      controller: newEmaill,
                      decoration: InputDecoration(hintText: "Enter New Email"),
                      // formkay: _formkeyemail,
                    ),
                    // defulttextlaple(
                    //   controller: null,
                    //   lableText: 'Password',
                    //   // formkay: _formkeypassword,
                    //   hinttext: '',
                    // ),
                  ],
                ),
              ),
              Column(
                children: [
                  defultbutton(
                      text: "Sign Out",
                      press: () {
                        founsSignout();
                      },
                      color: Color.fromARGB(255, 255, 0, 0)),
                ],
              ),
              Column(
                children: [
                  defultbutton(
                      text: "Display Data",
                      press: () {
                        founsSignout();
                      },
                      color: Color.fromARGB(255, 255, 0, 0)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Userr {
  final name = "".obs;
}

class TestController extends GetxController {
  TestController();

  final user = Userr().obs;
}
