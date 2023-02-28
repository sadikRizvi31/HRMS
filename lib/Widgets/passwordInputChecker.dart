import 'package:flutter/material.dart';

import '../Utils/constants.dart';

class paaswordInputChecker extends StatefulWidget {
  @override
  State<paaswordInputChecker> createState() => _paaswordInputCheckerState();
}

class _paaswordInputCheckerState extends State<paaswordInputChecker> {

  late String _password;
  double _strength = 0;
  late bool _passwordVisible;

  @override
  void initState(){
    _passwordVisible = false;
  }

  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");
  RegExp specialReg = RegExp(
      r'[\^$*.\[\]{}()?\-"!@#%&/\,><:;_~`+=' // <-- Notice the escaped symbols
      "'" // <-- ' is added to the expression
          ']'
  );

  String _displayText = 'Please enter a password';

  void _checkPassword(String value) {
    _password = value.trim();

    if (_password.isEmpty) {
      setState(() {
        _strength = 0;
        _displayText = 'Please enter you password';
      });
    } else if (_password.length < 8) {
      setState(() {
        _strength = 1 / 4;
        _displayText = 'Use 8 or more characters with a mix of letters, numbers and symbols.';
      });
    } else if (!letterReg.hasMatch(_password) || !numReg.hasMatch(_password)) {
      setState(() {
        _strength = 2 / 4;
        _displayText = 'Your password is acceptable but not strong';
      });
    } else {
      if (!specialReg.hasMatch(_password)) {
        setState(() {
          // Password length >= 8
          // But doesn't contain both letter and digit characters
          _strength = 3 / 4;
          _displayText = 'Your password is strong';
        });
      } else {
        // Password length >= 8
        // Password contains both letter and digit characters
        setState(() {
          _strength = 1;
          _displayText = 'Your password is great';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.0,bottom: 3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: (value) => _checkPassword(value),
            obscureText: !_passwordVisible,
            style: textLight(Colors.black,14),
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              labelText: "*****",
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: COLOR_BLUEMASK,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: COLOR_BLUE,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: COLOR_BLUEMASK,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Container(
                height: 6,
                width: 65,
                decoration: BoxDecoration(
                  color: _strength <= 1/4 ? COLOR_GREY : COLOR_BLUEMASK,
                  borderRadius: BorderRadius.circular(3.0),
                ),
              ),
              Container(
                height: 6,
                width: 65,
                decoration: BoxDecoration(
                  color: _strength >= 2 / 4 ? COLOR_BLUEMASK : COLOR_GREY,
                  borderRadius: BorderRadius.circular(3.0),
                ),
              ),
              Container(
                height: 6,
                width: 65,
                decoration: BoxDecoration(
                  color: _strength >= 3 / 4 ? COLOR_BLUEMASK : COLOR_GREY,
                  borderRadius: BorderRadius.circular(3.0),
                ),
              ),
              Container(
                height: 6,
                width: 65,
                decoration: BoxDecoration(
                  color: _strength == 1 ? COLOR_BLUEMASK : COLOR_GREY,
                  borderRadius: BorderRadius.circular(3.0),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            _displayText,
            style: textLight(COLOR_GREY, 12),textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
