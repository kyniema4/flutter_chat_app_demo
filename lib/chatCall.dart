import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'utils/theme.dart' as Theme;
import 'components/search.dart';
import 'models/call_modal.dart';
import 'utils/style.dart';
// import '../components/header.dart';

class ChatCall extends StatefulWidget {
  @override
  _ChatCall createState() => _ChatCall();
}

class _ChatCall extends State<ChatCall> {
  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text('All',
        style: TextStyle(fontSize: 14.0, fontFamily: 'Proxima-Nova-Regular')),
    1: Text('Missed',
        style: TextStyle(fontSize: 14.0, fontFamily: 'Proxima-Nova-Regular')),
  };

  final Map<int, Widget> icons = <int, Widget>{
    0: Container(
      child: Column(children: <Widget>[
        for (var call in calls)
          Container(
            decoration: BoxDecoration(
              // color: Colors.red,
              border: Border(
                bottom: borderList,
              ),
            ),
            margin: EdgeInsets.only(left: 25),
            padding: EdgeInsets.only(right: 20),
            height: 69,
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
              title: Container(
                  child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(call.name,
                            style: TextStyle(
                                color: call.missedCall == false
                                    ? Theme.Colors.grey343
                                    : Theme.Colors.red500,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Proxima-Nova')),
                        SizedBox(
                          height: 5,
                        ),
                        Text(call.type,
                            style: TextStyle(
                                color: Theme.Colors.grey666,
                                fontSize: 14.0,
                                fontFamily: 'Proxima-Nova-Regular')),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            ),
                        child: Text(call.date,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Theme.Colors.grey666,
                                fontSize: 15.0,
                                fontFamily: 'Proxima-Nova-Regular')),
                      )),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                        onTap: () {},
                        child: Image(
                          image: AssetImage(
                            'assets/images/icon/icon_info.png',
                          ),
                          // fit: BoxFit.contain,
                          height: 27,
                          width: 27,
                        )),
                  ),
                ],
              )),
            ),
          ),
      ]),
    ),
    1: ListTile(
      leading: FlutterLogo(size: 72.0),
      title: Text('Three-line ListTile'),
      subtitle: Text('A sufficiently long subtitle warrants three lines.'),
      trailing: Icon(Icons.more_vert),
      isThreeLine: true,
    ),
  };

  int sharedValue = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.Colors.purpleMain,
          centerTitle: true,
          title: Stack(
            children: <Widget>[
              SizedBox(
                  width: 200.0,
                  child: CupertinoSegmentedControl<int>(
                    borderColor: Theme.Colors.transparent,
                    selectedColor: Theme.Colors.blue9ff,
                    unselectedColor: Theme.Colors.white,
                    children: logoWidgets,
                    onValueChanged: (int val) {
                      setState(() {
                        sharedValue = val;
                      });
                    },
                    groupValue: sharedValue,
                  )),
            ],
          ),
          actions: <Widget>[
            Container(
              // decoration: new BoxDecoration(color: Colors.red),
              margin: EdgeInsets.only(right: 22),
              child: InkWell(
                  onTap: () {},
                  child: Image(
                    image: AssetImage(
                      'assets/images/icon/phone_white.png',
                    ),
                    // fit: BoxFit.contain,
                    height: 25,
                    width: 25,
                  )),
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Search(),
            Column(
                children: List.generate(
              1,
              (index) => icons[sharedValue],
            ))
          ],
        ),
      ),
    );
  }
}

// class ChatCallHeader extends AppBar {
//   ChatCallHeader()
//       : super(
//           automaticallyImplyLeading: false,
//           title: Header('Call'),
//           actions: <Widget>[
//             Container(
//               child: IconButton(
//                 icon: Icon(Icons.add),
//                 onPressed: () {},
//               ),
//             ),
//           ],
//         );
// }
