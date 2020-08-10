import 'package:chat/models/chat_model.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'chatContent.dart';
// import 'chatChat.dart';
import 'chatchat_edit.dart';
import '../models/user_model.dart';
import 'package:chat/chatchat_detail.dart';
import '../utils/theme.dart' as Theme;
class ChatContentPage extends StatefulWidget {
  final Message msg;
  ChatContentPage({this.msg});
  @override
  _ChatContentPageState createState() => _ChatContentPageState();
}
class _ChatContentPageState extends State<ChatContentPage> {
  
  @override
  Widget build(BuildContext context) {
    // return InkWell(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => ChatChatEditPage()),
      //   );
      //   // Navigator.pushReplacementNamed(context, '/chatchat_edit');
      // },
      // onTap: () => print("Container pressed"), // handle your onTap here
      // child: Container(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Column(
      //     children: List.generate(
      //       1,
      //       (index) => GestureDetector(
      //         onTap: (){
      //           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ChatChatDetail()));
      //         },
      //         child: Row(
      //         children: <Widget>[
      //           Expanded(
      //             flex: 1,
      //             child: CircleAvatar(
      //               backgroundImage: AssetImage('assets/images/avt_Friend.png'),
      //             ),
      //           ),
      //           Expanded(
      //               flex: 6,
      //               child: Container(
      //                 decoration: const BoxDecoration(
      //                   border: Border(
      //                     bottom: BorderSide(
      //                         width: 1.0, color: Color(0xFFFF000000)),
      //                   ),
      //                 ),
      //                 child: Column(
      //                   children: <Widget>[
      //                     Row(
      //                       children: <Widget>[
      //                         Expanded(
      //                           flex: 5,
      //                           child: Text('uhytu'),
      //                         ),
      //                         Expanded(
      //                           flex: 1,
      //                           child: Text('dsgf'),
      //                         )
      //                       ],
      //                     ),
      //                     Text(
      //                       'gfhfthf asbefuef f ewrfe sfewhyf ew 4yrtewiogtyew8ygew ytgewhg yewrygergh eryhgeri ery ',
      //                       textDirection: TextDirection.ltr,
      //                       overflow: TextOverflow.ellipsis,
      //                       maxLines: 2,
      //                     ),
      //                   ],
      //                 ),
      //               ))
      //         ],
      //       ),
      //       )
      //     ),
      //   ),
      // ),

    return Expanded(
      child: Container(
        color: Theme.Colors.purpleMain100,
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder:(BuildContext context, int index) {
            final Message chat = chats[index];
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => ChatChatDetail(user: chat.sender)));
              },
              child: Container(
                margin: EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0, bottom: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(backgroundImage:AssetImage(chat.sender.avtUrl, ),radius: 40.0, ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 20.0),
                        decoration: BoxDecoration(
                          border:  Border(bottom: BorderSide(width: 0.5,color: Theme.Colors.warmGray),)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  chat.sender.name,
                                  style : TextStyle(
                                    fontFamily: 'Proxima-Nova',
                                    color: Theme.Colors.grey400, fontSize: 16
                                    )
                                  ),
                                Text(
                                  chat.time,
                                  style : TextStyle(
                                    fontFamily: 'Proxima-Nova-Regular',
                                    color: Theme.Colors.grey350, fontSize: 14
                                    )
                                ),
                              ]
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              // padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                chat.text,
                                // maxLines: 2,
                                // overflow: TextOverflow.ellipsis,
                                style : TextStyle(
                                  fontFamily: 'Proxima-Nova-Regular',
                                  color: Theme.Colors.grey350, fontSize: 15
                                )
                              ),
                            )
                          ]
                        ),
                      ),
                    )
                  ],
                )
              ),
            );
          }
        ),
      ),
    );
  }
}
