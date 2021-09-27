import 'package:bee_foundation_app/Widgets/YellowFormButton.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class InfoOnboarding extends StatefulWidget {
  const InfoOnboarding({Key? key}) : super(key: key);

  @override
  _InfoOnboardingState createState() => _InfoOnboardingState();
}

class _InfoOnboardingState extends State<InfoOnboarding> {
  final infoOnboardingKey = GlobalKey<FormState>();

  //States for TextFields
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  bool _passwordVisible = false;

  //ImagePicker
  File _imageFile;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFFFFCD07),
        ),
        title: Text(
          'Create Account',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Form(
            key: infoOnboardingKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage('images/test_profile.jpg'),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "First Name",
                      labelStyle: TextStyle(
                        color: Colors.grey
                      )
                    ),
                    controller: firstNameController,
                    validator: Validators.required('First Name is required'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      labelStyle: TextStyle(
                        color: Colors.grey
                      )
                    ),
                    controller: lastNameController,
                    validator: Validators.required('Last Name is required'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.grey
                      )
                    ),
                    controller: emailController,
                    validator: Validators.compose([
                      Validators.required('Email is required'),
                      Validators.email('Please enter a valid email address')
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.grey
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: (){
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      )
                    ),
                    controller: passwordController,
                    obscureText: !_passwordVisible,
                    validator: Validators.compose([
                      Validators.required('Password is required'),
                      Validators.patternRegExp(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~^()]).{8,}$'), 'Must contain at least 8 characters\nMinimum 1 Uppercase Character\nMinimum 1 Numeric Character\nMinimum 1 Special Character')

                    ]),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40.0, left: 10, right: 10),
                    child: YellowFormButton(
                        text: "Next",
                        width: 100.0,
                        height: 40.0,
                        borderRadius: 20,
                        onPressed: (){
                          if(infoOnboardingKey.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Onto the next page')),
                            );
                          }

                        }),
                  ),
                )
              ],
            ),
      ),
    );
  }
}
