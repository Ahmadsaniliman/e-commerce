import 'package:e_commm/Ui/Product/components/color_dot.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class IncrementCounter extends StatefulWidget {
  const IncrementCounter({
    Key? key,
  }) : super(key: key);

  @override
  State<IncrementCounter> createState() => _IncrementCounterState();
}

class _IncrementCounterState extends State<IncrementCounter> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10.0,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                ColorDot(),
                ColorDot(),
                ColorDot(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (index >= 0) {
                          index--;
                        }
                      });
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Text(index.toString()),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        index++;
                      });
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
