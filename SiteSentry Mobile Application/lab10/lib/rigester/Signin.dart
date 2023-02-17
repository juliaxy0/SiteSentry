import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab10/Service/auth.dart';
import 'package:lab10/combonent/CustomButton.dart';
import 'package:lab10/rigester/Signout.dart';
import 'package:lab10/rigester/header_widget.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => SigninState();
}

// final _formkeyemail = GlobalKey<FormState>();
// final _formkeypassword = GlobalKey<FormState>();
final emailController = TextEditingController();
final passwordController = TextEditingController();
var _passwordVisible1 = true;

class SigninState extends State<Signin> {
  final double _height = 200;

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
                SizedBox(height: _height, child: HeaderWidget(_height)),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text('a1'.tr,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 60)),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 110,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFormField(
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "a2".tr,
                                suffixIcon: IconButton(
                                  iconSize: 20,
                                  onPressed: emailController.clear,
                                  icon: const Icon(Icons.clear),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                            TextFormField(
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              obscureText: _passwordVisible1,
                              enableSuggestions: false,
                              autocorrect: false,
                              controller: passwordController,
                              // formkay: _formkeypassword,
                              decoration: InputDecoration(
                                hintText: "a3".tr,

                                suffixIcon: IconButton(
                                  icon: Icon(
                                      size: 20,
                                      // Based on passwordVisible state choose the icon
                                      _passwordVisible1
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                      _passwordVisible1 = !_passwordVisible1;
                                    });
                                  },
                                ),
                                //  Pssword
                              ),
                            )
                          ],
                        ),
                      ),
                      defultbutton(
                        text: 'a4'.tr,
                        press: () {
                          signinWithEmail(
                              email: emailController.text,
                              password: passwordController.text);
                          passwordController.clear();
                          emailController.clear();
                          // Get.to(home());
                          // Statechange();
                        },
                        color: const Color.fromARGB(255, 182, 37, 37),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'a5'.tr,
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
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
                            child: const Text(
                              'English',
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () =>
                                Get.updateLocale(const Locale('bm', 'MY')),
                            child: const Text(
                              'Bahasa',
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                showAlertDialog(context);
                              },
                              child: Text(
                                'a6'.tr,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("a7".tr,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                                TextButton(
                                  onPressed: () async {
                                    // await FirebaseAuth.instance
                                    //     .signInWithEmailAndPassword(
                                    //   email: emailController.text,
                                    //   password: passwordController.text,
                                    // );
                                    // setState(() {});
                                    Get.to(() => const Signup());
                                    passwordController.clear();
                                    emailController.clear();
                                  },
                                  child: Text('a8'.tr),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
