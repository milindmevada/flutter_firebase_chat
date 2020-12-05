import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String text;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final ValueChanged<String> onChanged;

  const AppTextField({
    Key key,
    this.text,
    @required this.hintText,
    @required this.onChanged,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      widget.onChanged?.call(_controller.text);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.text == null) {
      _controller.clear();
    } else if (_controller.text != widget.text) {
      _controller.text = widget.text;
    }
    return TextField(
      controller: _controller,
      keyboardType: widget.textInputType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
