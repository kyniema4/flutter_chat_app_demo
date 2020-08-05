import 'package:flutter/material.dart';
import 'utils/theme.dart' as Theme;
import 'utils/style.dart';
import 'tabs.dart';
import 'package:carousel_slider/carousel_slider.dart';
final List<String> imgList = [
  'assets/images/img_Boarding1.png', 
  'assets/images/img-Boarding2.png',
  'assets/images/img-Boarding3.png'
];

class OnBoardingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OnBoardingPageState();
  }
}
class _OnBoardingPageState extends State<OnBoardingPage> {
  int _current = 0;

  Widget imageSlidersOne() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: <Widget>[
        Image.asset('assets/images/img_Boarding1.png', fit: BoxFit.contain, height: 230.0),
          Column(
            children: <Widget>[
              SizedBox(height: 45.0),
              Text(
                'Fast Messaging',
                style: titleSlideStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.0),
              Text(
                'Chat app fast messaging and powerful than any other application',
                style: contentSlideStyle,
                textAlign: TextAlign.center,
              ),
            ]
          ),
        ],
      )
    );
  }

  Widget imageSlidersTwo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: <Widget>[
        Image.asset('assets/images/img-Boarding2.png', fit: BoxFit.contain, height: 230.0),
          Column(
            children: <Widget>[
              SizedBox(height: 45.0),
              Text(
                'Secure System',
                style: titleSlideStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.0),
              Text(
                'Chat app secure system from hacker attack and we guarantee your data safe',
                style: contentSlideStyle,
                textAlign: TextAlign.center,
              ),
            ]
          ),
        ],
      )
    );
  }

  Widget imageSlidersThree() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: <Widget>[
        Image.asset('assets/images/img-Boarding3.png', fit: BoxFit.contain, height: 230.0),
          Column(
            children: <Widget>[
              SizedBox(height: 45.0),
              Text(
                'Free Call and Chat',
                style: titleSlideStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.0),
              Text(
                'Chat app free call and chat anytime and everytime',
                style: contentSlideStyle,
                textAlign: TextAlign.center,
              ),
            ]
          ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
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
                  items: [
                    imageSlidersOne(),
                    imageSlidersTwo(),
                    imageSlidersThree()
                  ],
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TabsPage()));
                  },
                  child: Text(
                    'LET\'S START',
                    style: letStartBtn,
                    ),
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
