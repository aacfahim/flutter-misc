import 'package:flutter/material.dart';
import 'package:login_page/custom_text_widget.dart';
import 'package:login_page/data_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/d5/04/1c/d5041cbbcc330ed61cd1f69e124e2789.jpg"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              left: 80,
              right: 80,
              bottom: 121,
              child: InkWell(
                onTap: () {
                  email = emailController.text;
                  password = passwordController.text;
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DataPage(
                            emailData: email, passwordData: password)));
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.09,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Text("L O G I N",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      offset: Offset(0, 10.0),
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ],
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white.withOpacity(0.5),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email is required";
                            }
                            if (value.length < 5) {
                              return " email is not correct";
                            }
                          },
                          controller: emailController,
                          hintText: "Enter E-mail",
                          preIcon: Icons.person,
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "password is required";
                            }
                            if (value.length < 5) {
                              return " password is too short";
                            }
                          },
                          obscureText: true,
                          controller: passwordController,
                          hintText: "Enter Password",
                          preIcon: Icons.lock,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box),
                                Text("Remember me")
                              ],
                            ),
                            Text("Forgot Password?")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: 140,
              child: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person, size: 70),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
