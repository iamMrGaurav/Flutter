import 'package:challenge/Dashboard.dart';
import 'package:challenge/StoryBrain.dart';
import 'package:flutter/material.dart';
import 'UI.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
    debugShowCheckedModeBanner: false,
  ));
}

StoryBrain storyBrain = StoryBrain();

class Challenge extends StatefulWidget {
  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/galaxy.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 6,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: CustomButton(
                  text: storyBrain.getChoice1(),
                  buttonColor: Colors.red,
                  textStyle: TextStyle(fontSize: 20.0),
                  onClick: () {
                    print(storyBrain.getStory());
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                    print(storyBrain.getStory());
                  },
                ),
              ),
              Expanded(
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: CustomButton(
                    text: storyBrain.getChoice2(),
                    buttonColor: Colors.blue,
                    textStyle: TextStyle(fontSize: 20.0),
                    onClick: () {
                      setState(() {
                        storyBrain.nextStory(2);
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  String text;
  Color buttonColor;
  TextStyle? textStyle;
  VoidCallback onClick;

  CustomButton(
      {this.text = "NA",
      this.buttonColor = Colors.green,
      this.textStyle,
      required this.onClick});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: widget.buttonColor),
          onPressed: widget.onClick,
          child: Text(
            widget.text,
            style: widget.textStyle,
          )),
    );
  }
}
