import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summertask2020/ui/widgets/customTitleBar.dart';
import 'package:summertask2020/ui/widgets/privacy/privacyOption.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryColorLight: Colors.black,
        primaryColorDark: Colors.black,
        accentColor: Colors.orangeAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
            child: CustomTitleBar(_width, "Privacy"),
            preferredSize: Size.fromHeight(120.0)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  PrivacyOption(_width, "Activity Status", ""),
                  PrivacyOption(_width, "Private Account",
                      "Only people you approve can see your phots and videos"),
                  PrivacyOption(_width, "Location", ""),
                  PrivacyOption(_width, "Permission to tag", ""),
                  PrivacyOption(_width, "Date of year",
                      "Do you want to show this year to public or not?"),
                  PrivacyOption(_width, "Save to archive",
                      "Automatically save photos and video to your archive"),
                ],
              ),
            ),
            SizedBox(
              height: 75,
              width: _width - 50,
              child: CupertinoButton(
                  child: Text(
                    "Save",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.6,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  onPressed: () {
                    print("Saved");
                  },
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black),
            ),
          ],
        ));
  }
}
