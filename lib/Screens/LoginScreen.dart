import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import 'package:bee_foundation_app/Widgets/YellowFormButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final logInOnboardingKey = GlobalKey<FormState>();

  //States for TextFields
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

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
        child: Form(
          key: logInOnboardingKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Center(
                    child: Text(
                  'Welcome Back',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                )),
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                  controller: emailController,
                  validator: Validators.compose([
                    Validators.required('Email is required'),
                    Validators.email('Please enter a valid email address')
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      )),
                  controller: passwordController,
                  obscureText: !_passwordVisible,
                  validator: Validators.required('Password is required'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 20.0),
                child: YellowFormButton(
                    text: "Login",
                    width: 400.0,
                    height: 40.0,
                    borderRadius: 10,
                    onPressed: () {
                      if (logInOnboardingKey.currentState!.validate()) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, 'Home', (route) => false);
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.yellow.shade700,
                            textStyle: TextStyle(fontFamily: 'Roboto')),
                        onPressed: () {},
                        child: Text('Forgot Password?'),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.yellow.shade700,
                            textStyle: TextStyle(fontFamily: 'Roboto')),
                        onPressed: () {},
                        child: Text(
                          "Create Account",
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
