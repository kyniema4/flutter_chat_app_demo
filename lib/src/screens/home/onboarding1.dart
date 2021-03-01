import 'package:flutter_chat_app_demo/src/mixins/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app_demo/src/mixins/theme.dart' as Theme;
import 'tabs.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/img_Boarding1.png',
  'assets/images/img-Boarding2.png',
  'assets/images/img-Boarding3.png'
];

class SlideData {
  final String imgSlide;
  final String titleSlide;
  final String contentSlide;

  SlideData({this.imgSlide, this.titleSlide, this.contentSlide});
}

List<SlideData> slidedata = [
  SlideData(
    imgSlide: 'assets/images/img_Boarding1.png',
    titleSlide: 'Fast Messaging',
    contentSlide:
        'Chat app fast messaging and powerful than any other application',
  ),
  SlideData(
    imgSlide: 'assets/images/img-Boarding2.png',
    titleSlide: 'Secure System',
    contentSlide:
        'Chat app secure system from hacker attack and we guarantee your data safe',
  ),
  SlideData(
    imgSlide: 'assets/images/img-Boarding3.png',
    titleSlide: 'Free Call and Chat',
    contentSlide: 'Chat app free call and chat anytime and everytime',
  )
];

class OnBoardingPage extends StatefulWidget {
  
  @override
  // State<StatefulWidget> createState() {
  //   return _OnBoardingPageState();
  // }
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int _current = 0;

  Widget imageSlidersOne() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/img_Boarding1.png',
                fit: BoxFit.contain, height: 230.0),
            Column(children: <Widget>[
              SizedBox(height: 40.0),
              Text(
                'Fast Messaging',
                style: titleSlideStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Text(
                'Chat app fast messaging and powerful than any other application',
                style: contentSlideStyle,
                textAlign: TextAlign.center,
              ),
            ]),
          ],
        ));
  }

  Widget imageSlidersTwo() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/img-Boarding2.png',
                fit: BoxFit.contain, height: 230.0),
            Column(children: <Widget>[
              SizedBox(height: 40.0),
              Text(
                'Secure System',
                style: titleSlideStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Text(
                'Chat app secure system from hacker attack and we guarantee your data safe',
                style: contentSlideStyle,
                textAlign: TextAlign.center,
              ),
            ]),
          ],
        ));
  }

  Widget imageSlidersThree() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/img-Boarding3.png',
                fit: BoxFit.contain, height: 230.0),
            Column(children: <Widget>[
              SizedBox(height: 40.0),
              Text(
                'Free Call and Chat',
                style: titleSlideStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Text(
                'Chat app free call and chat anytime and everytime',
                style: contentSlideStyle,
                textAlign: TextAlign.center,
              ),
            ]),
          ],
        ));
  }

  // _buildSlides(SlideData slidedata) {
  //   final Container msg = Container(
  //     padding: EdgeInsets.symmetric(horizontal: 30.0),
  //     child: Column(
  //       children: <Widget>[
  //       Image.asset(slidedata.imgSlide, fit: BoxFit.contain, height: 230.0),
  //         Column(
  //           children: <Widget>[
  //             SizedBox(height: 45.0),
  //             Text(
  //               slidedata.titleSlide,
  //               style: titleSlideStyle,
  //               textAlign: TextAlign.center,
  //             ),
  //             SizedBox(height: 25.0),
  //             Text(
  //               slidedata.contentSlide,
  //               style: contentSlideStyle,
  //               textAlign: TextAlign.center,
  //             ),
  //           ]
  //         ),
  //       ],
  //     )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Theme.Colors.purpleMain),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
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
                  height: MediaQuery.of(context).size.height / 1.8,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
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
                        // _current == index ? Icons.circle : Icons.lens_outlined,
                        _current == index
                            ? Icons.lens
                            : Icons.panorama_fish_eye,
                        color: _current == index
                            ? Color.fromRGBO(255, 255, 255, 1)
                            : Color.fromRGBO(255, 255, 255, 0.3),
                        size: 13.0));
              }).toList(),
            ),
          ],
        ),
        Container(
            height: MediaQuery.of(context).size.height / 4,
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            alignment: Alignment.center,
            child: SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(
                        builder: (context) => TabsPage(),
                      ),
                      (route) => route == null);
                  // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TabsPage()));
                },
                child: Text(
                  'LET\'S START',
                  style: letStartBtn,
                ),
                padding: EdgeInsets.symmetric(vertical: 18.0),
                // width: MediaQuery.of(context).size.width - 20,
              ),
            ))
      ]),
    ));
  }
}
