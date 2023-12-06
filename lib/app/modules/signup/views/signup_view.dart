import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resto_app/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xffFF9F1C),
                Color(0xFFFFFA6B),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 36.0, horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 42.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Sign Up to Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFE7EDEB),
                            hintText: "Username",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.orange[600],
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFE7EDEB),
                            hintText: "Email",
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.orange[600],
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFE7EDEB),
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.orange[600],
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFE7EDEB),
                            hintText: "Phone",
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.orange[600],
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () => Get.offNamed(Routes.SIGNIN),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    // Change your radius here
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.white,
                                    decorationColor: Colors.white),
                              )),
                        ),
                        const SizedBox(
                          height: 80.0,
                        ),
                        const Text("Already have an Account ?"),
                        GestureDetector(
                          onTap: () => Get.offNamed(Routes.SIGNIN),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.orange,
                                decorationColor: Colors.orange),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
