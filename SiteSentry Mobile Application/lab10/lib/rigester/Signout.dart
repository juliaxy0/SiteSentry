import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab10/Service/auth.dart';
import 'package:lab10/combonent/CustomButton.dart';
import 'package:lab10/rigester/Signin.dart';
import 'package:lab10/rigester/header_widget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();

  // void clearText() {
  //   fieldText.clear();
  // }
}

class _SignupState extends State<Signup> {
  final double _height = 200;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  var _passwordVisible = true;
  var _passwordVisible2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 22, 22, 22),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: _height, child: HeaderWidget(_height)),
                Container(
                  //     padding: EdgeInsets.only(left: 13, right: 13),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Text('a1'.tr,
                              style: const TextStyle(
                                  fontSize: 70,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: 175,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextFormField(
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                                controller: emailController,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      iconSize: 20,
                                      onPressed: emailController.clear,
                                      icon: const Icon(Icons.clear),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                    hintText: "Email"),
                                //hinttext: 'a2'.tr,
                                // formkay: _formkeyemail,
                                // lableText: 'UserName',
                              ),
                              TextFormField(
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                                obscureText: _passwordVisible,
                                enableSuggestions: false,
                                autocorrect: false,
                                controller: passwordController,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                        size: 20,
                                        // Based on passwordVisible state choose the icon
                                        _passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255)),
                                    onPressed: () {
                                      // Update the state i.e. toogle the state of passwordVisible variable
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                  hintText: "a3".tr,
                                ),
                                // formkay: _formkeypassword,
                                //  hinttext: 'a3'.tr,
                                //   lableText: 'Pssword',
                              ),
                              TextFormField(
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                                obscureText: _passwordVisible2,
                                enableSuggestions: false,
                                autocorrect: false,
                                controller: repasswordController,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                          size: 20,
                                          // Based on passwordVisible state choose the icon
                                          _passwordVisible2
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255)),
                                      onPressed: () {
                                        // Update the state i.e. toogle the state of passwordVisible variable
                                        setState(() {
                                          _passwordVisible2 =
                                              !_passwordVisible2;
                                        });
                                      },
                                    ),
                                    hintText: "an11".tr),
                                // formkay: _formkeyrepassword,
                                //  hinttext: 'an11'.tr,
                                //   lableText: 'Pssword',
                              ),
                            ],
                          ),
                        ),
                        defultbutton(
                          text: 'a9'.tr,
                          press: () {
                            creatAccount(
                              email: emailController.text,
                              password: passwordController.text,
                              rePassword: repasswordController.text,
                            );
                          },
                          color: const Color.fromARGB(255, 182, 37, 37),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    showAlertDialog(context);
                                  },
                                  child: Text('a6'.tr)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'a5'.tr,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () =>
                                  Get.updateLocale(const Locale('en', 'US')),
                              child: const Text('English'),
                            ),
                            OutlinedButton(
                              onPressed: () =>
                                  Get.updateLocale(const Locale('bm', 'MY')),
                              child: const Text('Bahasa'),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "a10".tr,
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              TextButton(
                                onPressed: () async {
                                  // await FirebaseAuth.instance
                                  //     .createUserWithEmailAndPassword(
                                  //   email: emailController.text,
                                  //   password: passwordController.text,
                                  // );
                                  // setState(() {});
                                  Get.to(() => const Signin());
                                },
                                child: Text('a4'.tr),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("ca1".tr),
    onPressed: () {
      Get.back();
    },
  );
  Widget continueButton = TextButton(
    child: Text("co1".tr),
    onPressed: () {
      Get.back();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("ac1".tr),
    content: Text("an12".tr),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
