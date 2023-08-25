import 'package:flutter/material.dart';
import 'package:session_4_task/home_screen.dart';
// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, avoid_unnecessary_containers

class LoginScreem extends StatefulWidget {
  const LoginScreem({super.key});

  @override
  State<LoginScreem> createState() => _LoginScreemState();
}

class _LoginScreemState extends State<LoginScreem> {
  final formkry = GlobalKey<FormState>();
  bool obsecure = true;
  bool? checked = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkry,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height / 10,
                  ),
                  Text(
                    "talabat",
                    style: TextStyle(
                        fontSize: height / 10,
                        color: Colors.amber[900],
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height / 17,
                  ),
                  Text(
                    "sign up for free",
                    style: TextStyle(
                        fontSize: width / 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height / 40,
                  ),
                  SizedBox(
                    width: width * 0.85,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your name";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(height / 40),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.amber[900],
                        ),
                        labelText: "Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 40,
                  ),
                  SizedBox(
                    width: width * 0.85,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your Email";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(height / 40),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.amber[900],
                        ),
                        labelText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 40,
                  ),
                  SizedBox(
                    width: width * 0.85,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your password";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(height / 40),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.amber[900],
                        ),
                        labelText: "password",
                        suffixIcon: IconButton(
                          icon: Icon(obsecure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              obsecure = !obsecure;
                            });
                          },
                        ),
                      ),
                      obscureText: obsecure,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width / 40,
                        ),
                        Checkbox(
                          value: checked,
                          onChanged: (bool? newval) {
                            checked = newval;
                          },
                          activeColor: Colors.amber[900],
                        ),
                        Text(
                          "Remember Me",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height/20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber[900],
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      minimumSize: Size(250, 50)
                    ),
                      onPressed: () {
                        if (formkry.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                        }
                      },
                      child: Text("Create Account",
                          style: TextStyle(color: Colors.white)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
