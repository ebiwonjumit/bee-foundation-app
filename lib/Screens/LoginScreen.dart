import 'package:bee_foundation_app/Widgets/YellowFormButton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //States for TextFields
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            backgroundColor: Color(0xFFFFD64D),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage("images/festival_logo_new.png"))),
            ),
            centerTitle: true,
            elevation: 0,
          )),
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15, left: 20),
              child: Center(
                  child: Text(
                'Welcome Back',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
              )),
            ),
            SizedBox(height: 40.0,),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
              ),
              controller: emailController,
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: "Password"
              ),
              controller: passwordController,
            ),
            SizedBox(height: 10.0,),
            YellowFormButton(text: "Login", onTap: (){})
          ],
        ),
      ),
    );
  }
}
