import 'package:flutter/material.dart';

class DreavyFormField extends StatefulWidget {
  final String label;
  final IconData icon;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool hide;

  const DreavyFormField(
      {Key? key,
      required this.label,
      required this.icon,
      required this.validator,
      required this.controller,
      this.hide = false})
      : super(key: key);

  @override
  State<DreavyFormField> createState() => _DreavyFormFieldState();
}

class _DreavyFormFieldState extends State<DreavyFormField> {
  late bool _isTextHidden = false;

  @override
  void initState() {
    super.initState();
    _isTextHidden = widget.hide;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: widget.controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: _isTextHidden,
        enableSuggestions: true,
        cursorColor: Colors.black87,
        style: const TextStyle(color: Color.fromRGBO(222, 222, 222, 1.0)),
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: Colors.black87,
            size: 28.0,
          ),
          suffixIcon: widget.hide
              ? IconButton(
                  icon: const Icon(Icons.remove_red_eye),
                  color: Colors.black87,
                  iconSize: 28.0,
                  onPressed: () => setState(() {
                        _isTextHidden = !_isTextHidden;
                      }))
              : null,
          labelText: widget.label,
          labelStyle: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 16.0),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black87),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(222, 222, 222, 1.0)),
          ),
        ),
        validator: widget.validator,
      ),
    );
  }
}
