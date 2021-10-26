import 'package:flutter/material.dart';
import '../../app_styles.dart';

class MyPasswordField extends StatefulWidget {
  const MyPasswordField({
    Key? key,
    required this.fillColor,
    required this.focusNode,
    required this.validator,
  }) : super(key: key);

  final Color fillColor;
  final FocusNode focusNode;
  final String? Function(String?) validator;

  @override
  _MyPasswordFieldState createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        style: widget.focusNode.hasFocus
            ? kBodyText2.copyWith(color: kPrimaryColor)
            : kInputHintStyle,
        cursorColor: kSecondaryColor,
        textInputAction: TextInputAction.done,
        focusNode: widget.focusNode,
        obscureText: hidePassword,
        validator: widget.validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.fillColor,
          border: kInputBorder,
          enabledBorder: kInputBorder,
          hintText: 'Password',
          hintStyle: kInputHintStyle,
          // contentPadding: EdgeInsets.all(0),
          suffix: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (hidePassword == true) {
                    hidePassword = false;
                  } else {
                    hidePassword = true;
                  }
                });
              },
              child: Text(
                'Show',
                style: kBodyText3.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              // height: 60,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 2,
                    color: kScaffoldBackground,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  Icons.lock_outline,
                  color: widget.focusNode.hasFocus
                      ? kPrimaryColor
                      : kSecondaryColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
