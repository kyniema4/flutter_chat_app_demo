import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'utils/theme.dart' as Theme;
// import '../components/header.dart';

class ChatCall extends StatefulWidget {
  @override
  _ChatCall createState() => _ChatCall();
}

class _ChatCall extends State<ChatCall> {
  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text('Logo 1'),
    1: Text('Logo 2'),
  };

  final Map<int, Widget> icons = <int, Widget>{
    0: Container(
      decoration: new BoxDecoration(color: Colors.red),
      height: 70.0,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text('dfsg'),
                    Text(
                      'gfhfthf asbefuef f ewrfe sfewhyf ew',
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Text('desfh'),
          ),
          Expanded(
            flex: 1,
            child: Text('dfef'),
          ),
        ],
      ),
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
          title: Stack(
            children: <Widget>[
              SizedBox(
                width: 200.0,
                child: CupertinoSegmentedControl<int>(
                  borderColor: Colors.grey,
                  selectedColor: Colors.redAccent,
                  unselectedColor: Colors.white,
                  children: logoWidgets,
                  onValueChanged: (int val) {
                    setState(() {
                      sharedValue = val;
                    });
                  },
                  groupValue: sharedValue,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            Container(
              child: IconButton(
                icon: Icon(Icons.phone),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)))),
              ),
            ),
            // Row(
            //   children: <Widget>[
            //     Expanded(
            //         flex: 5,
            //         child: Column(
            //           children: <Widget>[
            //             Text('dehfref'),
            //             Text('dehfref'),
            //           ],
            //         )),
            //     Expanded(flex: 1, child: Text('dshfds')),
            //     Expanded(
            //       flex: 1,
            //       child: Icon(Icons.info_outline),
            //     ),
            //   ],
            // ),

            Column(
                children: List.generate(
              2,
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
