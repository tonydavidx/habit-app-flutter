import 'package:flutter/material.dart';

import '../../app_styles.dart';

class SmallTextButton extends StatelessWidget {
  const SmallTextButton({
    Key? key,
    required this.buttonText,
    required this.page,
  }) : super(key: key);

  final String buttonText;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        splashColor: kSecondaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            buttonText,
            style: kBodyText3.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
