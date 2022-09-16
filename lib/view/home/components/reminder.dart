import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';

class Reminder extends StatelessWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10,bottom: 10,left: 30,right: 25),
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: greyColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Recharge validity ending',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Subscriber ID: 1234567',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: greyColor,
                  ),
                )),
                child: Text(
                  'Renew plan for Priya',
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Text('12/01/21'),
            ],
          )
        ],
      ),
    );
  }
}
