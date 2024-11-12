import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool? see1 = true;
  bool? see2 = true;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();

  @override
  void initState() {
    super.initState();

    emailController.addListener(onListen);
  }

  @override
  void dispose() {
    emailController.removeListener(onListen);

    super.dispose();
  }

  void onListen() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.blue,),

      body: Container(
        padding: EdgeInsets.only(top: 50, left: 30),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/Group 91.png"),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  )
                ],
              ),
              TextFormField(
                controller: emailController,
                validator: (email) =>
                    email != null && !EmailValidator.validate(email)
                        ? 'Enter a valid email'
                        : null,
                decoration: InputDecoration(
                  suffixIcon: EmailValidator.validate(emailController.text)
                      ? Container(
                          width: 10, child: Image.asset("assets/Group 57.png"))
                      : Container(
                          height: 0,
                          width: 0,
                        ),
                  labelText: "Email Address",
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: see1!,
                decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          if (see1 == true) {
                            see1 = false;
                            setState(() {});
                          } else {
                            see1 = true;
                            setState(() {});
                          }
                        },
                        icon: see1 == true
                            ? Icon(Icons.remove_red_eye_outlined)
                            : Icon(Icons.remove_red_eye))),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                // validator: (password) {
                //
                // },
                controller: passwordController2,
                obscureText: see2!,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (see2 == true) {
                          see2 = false;
                          setState(() {});
                        } else {
                          see2 = true;
                          setState(() {});
                        }
                      },
                      icon: see1 == true
                          ? Icon(Icons.remove_red_eye_outlined)
                          : Icon(Icons.remove_red_eye)),
                  labelText: "Confrim Password",
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: HexColor("#5063BF")),
                  child: TextButton(
                      onPressed: () {
                        final form = formKey.currentState;
                        if (passwordController2.text ==
                            passwordController.text) {
                          if (form!.validate()) {
                            final email = emailController.text;
                            final pass = passwordController;
                            ScaffoldMessenger.of(context)
                              ..removeCurrentSnackBar()
                              ..showSnackBar(SnackBar(
                                content: Text(
                                    'Your email is $email and your password is $pass'),
                              ));
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homescreen()));
                          }
                        }
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Colors.white),
                      ))),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 80,
                      child: Divider(
                        color: HexColor("#B1B1B1"),
                        thickness: 1,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "or",
                    style: TextStyle(color: HexColor("#B1B1B1")),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      width: 80,
                      child: Divider(
                        color: HexColor("#B1B1B1"),
                        thickness: 1,
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey.shade100,
                        child: Container(
                            width: 40,
                            height: 45,
                            child: Image.asset(
                              "assets/google.png",
                              fit: BoxFit.cover,
                            ))),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey.shade100,
                        child: Container(
                            width: 55,
                            height: 55,
                            child: Image.asset(
                              "assets/Mask group.png",
                              fit: BoxFit.cover,
                            ))),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(color: HexColor("#5063BF")),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
