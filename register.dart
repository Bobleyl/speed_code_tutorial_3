import 'package:flutter/material.dart';
import 'package:speed_code_auth/login.dart';

class RegisterView extends StatefulWidget {
  RegisterView({Key key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Image.asset("authPage.png"),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff2f2f2),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: TextFormField(
                          controller: nameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Full Name",
                            border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                            border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "something@gmail.com",
                            border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff9450e7),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("I'm already a member."),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginView()),
                            );
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Color(0xff9450e7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
