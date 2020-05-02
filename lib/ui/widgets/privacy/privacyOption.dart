import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summertask2020/ui/widgets/CustomDesignSwitch.dart';

class PrivacyOption extends StatefulWidget {
  double _width;
  String _optionName, _optionDesc;
  PrivacyOption(this._width, this._optionName, this._optionDesc);
  @override
  _PrivacyOptionState createState() => _PrivacyOptionState();
}

class _PrivacyOptionState extends State<PrivacyOption> {
  bool _isSwitchedOn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 22, right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: widget._width - 125,
                padding: EdgeInsets.only(top: 5, bottom: 5, right: 5),
                child: Text(
                  widget._optionName,
                  textAlign: TextAlign.left,
                  textScaleFactor: 2,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                width: widget._width - 125,
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  widget._optionDesc,
                  textAlign: TextAlign.left,
                  textScaleFactor: 1.2,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSwitchedOn = !_isSwitchedOn;
              });
            },
            child: CustomDesignSwitch(85, 45, _isSwitchedOn),
          )
        ],
      ),
    );
  }
}
