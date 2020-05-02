import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summertask2020/res/fonts/custom_cons_icons.dart';

class CustomTitleBar extends StatelessWidget {
  double _width;
  String _title;
  CustomTitleBar(this._width, this._title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: _width,
      padding: EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 5),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: <Widget>[
          Container(
            width: _width,
            child: Text(
              _title,
              textAlign: TextAlign.center,
              textScaleFactor: 2.5,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            width: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2.0,
                  color: Colors.black,
                  style: BorderStyle.solid,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset.fromDirection(pi / 360 * 180, 2.5),
                  ),
                ]),
            child: IconButton(
              icon: Icon(
                CustomCons.left_open,
                color: Colors.black,
              ),
              iconSize: 35,
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 12, right: 14),
              onPressed: () {
                print("Page Back");
              },
            ),
          ),
        ],
      ),
    );
  }
}
