import 'package:flutter/material.dart';
import '../../app_styles.dart';

class LargeIconButton extends StatelessWidget {
  const LargeIconButton({
    Key? key,
    required this.buttonName,
    required this.iconImage,
  }) : super(key: key);

  final String buttonName, iconImage;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 30,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 1,
              child: Container(
                // height: 25,
                child: Image.asset(iconImage),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 3,
              child: Text(
                buttonName,
                style: kBodyText2,
              ),
            ),
          ],
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
