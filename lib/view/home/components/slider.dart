import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double feedbackrate = 0.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Admin request :',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: blackColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primaryColor,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 10.0,
                  ),
                  child: Text(
                    'How would you rate our feedback responsed time?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                ),
                Slider(
                  min: 0.0,
                  max: 100.0,
                  value: feedbackrate,
                  activeColor: greenColor,
                  thumbColor: greenColor,
                  inactiveColor: whiteColor,
                  onChanged: (value) {
                    setState(() {
                      feedbackrate = value;
                      print(feedbackrate);
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Bad',
                      style: TextStyle(color: whiteColor),
                    ),
                    Text(
                      'Okey',
                      style: TextStyle(color: whiteColor),
                    ),
                    Text(
                      'Good',
                      style: TextStyle(color: whiteColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
