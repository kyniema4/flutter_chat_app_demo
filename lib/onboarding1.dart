import 'package:flutter/material.dart';
import 'utils/theme.dart' as Theme;
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/img_Boarding1.png', 
  'assets/images/img-Boarding2.png',
  'assets/images/img-Boarding3.png'
];
// var img;
// var title;
// var content;
// List imgList = [
//   {img: 'assets/images/img_Boarding1.png', title: 'Hello World', content: 'Welcome to learning Giang!'},
//   {img: 'assets/images/img-Boarding2.png', title: 'Installation1', content: 'You can install React from npm.'},
//   {img: 'assets/images/img-Boarding3.png', title: 'Installation2', content: 'You can install React from npm.'}
// ];



final List<Widget> imageSliders = imgList.map((item) {
  return Builder(
    builder: (BuildContext context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        decoration: BoxDecoration(
          color: Colors.amber
        ),
        child: Column(
          children: <Widget>[
          Image.asset(item, fit: BoxFit.contain, height: 230.0),
            Column(
              children: <Widget>[
                Text(
                  'giang',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'this is giang',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ]
            ),
          ],
        )
      );
    },
  );
}).toList();

class OnBoardingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OnBoardingPageState();
  }
}
class _OnBoardingPageState extends State<OnBoardingPage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.Colors.purpleMain
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height/1.8,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.map((url) {
                    int index = imgList.indexOf(url);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      alignment: Alignment.center,
                      child: Icon(
                        _current == index ? Icons.circle : Icons.lens_outlined,
                          color: _current == index
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(255, 255, 255, 0.3),
                          size: 13.0
                      )
                    );
                  }).toList(),
                ),
              ],  
            ),
            Container(
              height: MediaQuery.of(context).size.height/4,
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                child:  RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'LET\'S START',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Proxima-Nova'
                    ),),
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  // width: MediaQuery.of(context).size.width - 20,
                ),
              )
            )
          ]
        ),
      )
    );
  }
}
