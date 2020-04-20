import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MainPage extends StatelessWidget {
  MainPage({Key key, this.stepNo}) : super(key: key);
  final int stepNo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          appBar: AppBar(),
          body: (stepNo == 1)
              ? Container1()
              : (stepNo == 2) ? Container2() : Container0(),
        ));
  }
}

class Container0 extends StatelessWidget {
  Container0({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final int currentStep = 0;
    return Container(
        child: Column(
      children: <Widget>[
        StepProgress(currentStep: currentStep),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
              child: Center(
                  child: Text(
            "Container0",
            style: Theme.of(context).textTheme.bodyText1,
          ))),
        ),
        FloatingActionButton(
          child: Icon(
            Icons.chevron_right,
            size: 36,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return MainPage(
                    stepNo: currentStep + 1,
                  );
                },
              ),
            );
          },
        )
      ],
    ));
  }
}

class Container1 extends StatelessWidget {
  Container1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final int currentStep = 1;
    return Container(
        child: Column(
      children: <Widget>[
        StepProgress(currentStep: currentStep),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
              child: Center(
                  child: Text(
            "Container1",
            style: Theme.of(context).textTheme.bodyText1,
          ))),
        ),
        FloatingActionButton(
          child: Icon(
            Icons.chevron_right,
            size: 36,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return MainPage(
                    stepNo: currentStep + 1,
                  );
                },
              ),
            );
          },
        )
      ],
    ));
  }
}

class Container2 extends StatelessWidget {
  Container2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final int currentStep = 2;
    return Container(
        child: Column(
      children: <Widget>[
        StepProgress(currentStep: currentStep),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
              child: Center(
                  child: Text(
            "Container2",
            style: Theme.of(context).textTheme.bodyText1,
          ))),
        ),
      ],
    ));
  }
}

class StepProgress extends StatelessWidget {
  StepProgress({Key key, this.currentStep}) : super(key: key);
  final int currentStep;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        child: StepProgressIndicator(
          totalSteps: 3,
          currentStep: currentStep,
          size: 36,
          selectedColor: Colors.black,
          unselectedColor: Colors.grey[200],
          customStep: (index, color, _) => color == Colors.black
              ? Container(
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                )
              : (index == currentStep)
                  ? Container(
                      decoration: new BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    )
                  : Container(
                      decoration: new BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.remove,
                      ),
                    ),
        ),
      ),
    );
  }
}
