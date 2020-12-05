import 'package:flutter/material.dart';

class AppRaisedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final ButtonState buttonState;

  const AppRaisedButton({
    Key key,
    @required this.text,
    @required this.onTap,
    this.buttonState = ButtonState.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.zero,
      onPressed: {
        ButtonState.active: () => onTap(),
        ButtonState.loading: () => null,
        ButtonState.inActive: null,
      }[buttonState],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          if (buttonState == ButtonState.loading)
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

enum ButtonState { active, inActive, loading }
