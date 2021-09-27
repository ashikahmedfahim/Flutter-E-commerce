// Flutter imports:
import 'package:flutter/material.dart';
import 'package:lacuna/components/normal_appbar.dart';
import 'package:im_stepper/stepper.dart';
import 'package:lacuna/components/stepper_header.dart';
import 'package:lacuna/components/stepper_navigation_button.dart';
import 'package:lacuna/constants.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  int activeStep = 0;
  int upperBound = 3;

  void navigate(buttonName) {
    if (buttonName == "Next") {
      if (activeStep < upperBound) {
        setState(() {
          activeStep++;
        });
      }
    } else {
      if (activeStep > 0) {
        setState(() {
          activeStep--;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NormalAppBar(
        appBar: AppBar(),
        title: 'Checkout',
        disableIcon: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NumberStepper(
              lineLength: 70.0,
              lineColor: kGreyText,
              activeStepBorderColor: kDarkTextColor,
              activeStepColor: kSuccessColor,
              numbers: const [1, 2, 3, 4],
              activeStep: activeStep,
              onStepReached: (index) {
                setState(() {
                  activeStep = index;
                });
              },
            ),
            header(activeStep),
            Text(
              '$activeStep',
              style: const TextStyle(fontSize: 370.0),
            ),
            Text(
              '$activeStep',
              style: const TextStyle(fontSize: 370.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(
                    "Back",
                    (windowSize.width / 2) - 30,
                    kDarkTextColor,
                    navigate,
                  ),
                  button(
                    "Next",
                    (windowSize.width / 2) - 30,
                    kPrimaryColor,
                    navigate,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
