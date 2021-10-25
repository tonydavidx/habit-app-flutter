import 'package:flutter/material.dart';

import '../../app_styles.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: kPrimaryColor,
          checkColor: kSecondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(
          widget.text,
          style: kBodyText3,
        ),
      ],
    );
  }
}
