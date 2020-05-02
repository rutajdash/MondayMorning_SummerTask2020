import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDesignSwitch extends StatelessWidget {
  double _width, _height;
  bool _isChecked;
  CustomDesignSwitch(this._width, this._height, this._isChecked);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: _width,
        height: _height + 6,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
          color: _isChecked
              ? Color.fromARGB(255, 255, 189, 18)
              : Color.fromARGB(255, 233, 231, 252),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          border: Border.all(
            width: 3.0,
            color: Colors.black,
            style: BorderStyle.solid,
          ),
        ),
        child: Align(
          alignment: !_isChecked ? Alignment.centerLeft : Alignment.centerRight,
          child: Container(
            width: _height,
            height: _height,
            padding: EdgeInsets.all((_height + 18) / 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
//                  border: Border.all(
//                    width: 3.0,
//                    color: Colors.black,
//                    style: BorderStyle.solid,
//                  ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 3.0,
                ),
              ],
            ),
            child: Container(
              width: (_height - 18) / 2,
              height: (_height - 18) / 2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
//                  border: Border.all(
//                    width: 3.0,
//                    color: Colors.black,
//                    style: BorderStyle.solid,
//                  ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 3.0,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
