import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cars/auth_controller.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    List images = ["g.png", "f.png"];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:  Theme.of(context).primaryColor,
        body: Column(
          children: [
            Container(
              width: w,
              height: h * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/see.webp"), fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.16,
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 124, 128, 131),
                    radius: 60,
                    backgroundImage: AssetImage("img/acar.webp"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(178, 178, 178, 1),
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Color.fromRGBO(60, 64, 72,1))
                        ]),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Your Email",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 188, 232, 245),
                          ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                              enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(178, 178, 178, 1),
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Color.fromRGBO(60, 64, 72,1))
                        ]),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.password,
                            color: Color.fromARGB(255, 188, 232, 245),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                AuthController.instance.register(
                    emailController.text.trim(), passwordController.text.trim());
              },
              child: Container(
                width: w * 0.4,
                height: h * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:Color.fromRGBO(0, 171, 179,1),
                    /*image: DecorationImage(
                        image: AssetImage("img/backsign.jpeg"),
                        fit: BoxFit.cover)*/
                        ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.back(),
                    text: "Have an account?",
                    style: TextStyle(fontSize: 20, color:  Color.fromRGBO(60, 64, 72,1)))),
            SizedBox(
              height: w * 0.1,
            ),
            RichText(
                text: TextSpan(
              text: "Sign up using the following methods",
              style: TextStyle(color: Color.fromRGBO(60, 64, 72,1), fontSize: 15),
            )),
            Wrap(
              children: List<Widget>.generate(2, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("img/" + images[index]),
                    ),
                  ),
                );
              }),
            )
          ],
        ));
  }
}
