import 'package:flutter/material.dart';
import 'package:bee_foundation_app/Widgets/YellowFormButton.dart';
import 'package:bee_foundation_app/dbs/models/BeeInfo.dart';

class QuestionsOnboarding extends StatefulWidget {
  const QuestionsOnboarding({Key? key}) : super(key: key);

  @override
  _QuestionsOnboardingState createState() => _QuestionsOnboardingState();
}

class _QuestionsOnboardingState extends State<QuestionsOnboarding> {
  final questionsOnboardingKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFFFFCD07),
        ),
        title: Text(
          'More Questions',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: questionsOnboardingKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding:
                  const EdgeInsets.only(bottom: 10.0, left: 10, right: 10),
                  child: YellowFormButton(
                      text: "Done",
                      width: 100.0,
                      height: 40.0,
                      borderRadius: 20,
                      onPressed: () {
                        if (questionsOnboardingKey.currentState!.validate()) {
                          Navigator.pushNamedAndRemoveUntil(context, 'Home', (route) => false);
                        }
                      }),
                ),
              )
            ],
          )
        )
      ),
    );
  }
}
