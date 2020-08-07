import 'package:flutter/material.dart';
import '../utils/theme.dart' as Theme;

class Search extends StatelessWidget {
  // final String title;

  // Header(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(color: Theme.Colors.grey9cd),
        padding: const EdgeInsets.all(7.0),
        child: Container(
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: TextField(
              style: TextStyle(
                height: 1,
                fontSize: 14.0,
              ),
              // textAlign: TextAlign.center,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.Colors.transparent, width: 0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.Colors.purpleMain, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  hintText: "Search",
                  hintStyle: TextStyle(
                      fontSize: 14.0,
                      color: Theme.Colors.greye93,
                      fontFamily: 'Proxima-Nova-Regular'),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.Colors.greye93,
                    // fontSize: 14.0,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))))),
        ));
  }
}
