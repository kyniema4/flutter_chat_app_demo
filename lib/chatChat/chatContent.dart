import 'package:chat/models/chat_model.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'chatContent.dart';
// import 'chatChat.dart';
import 'chatchat_edit.dart';
import 'package:chat/chatchat_detail.dart';
import '../utils/theme.dart' as Theme;

class ChatContentPage extends StatelessWidget {
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
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder:(BuildContext context, int index) {
            final Message chat = chats[index];
            if (index.isOdd) return new Divider(color: Theme.Colors.warmGray);
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => ChatChatDetail(user: chat.sender)));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(backgroundImage:AssetImage(chat.sender.avtUrl, ),radius: 35.0, ),
                    SizedBox(width: 20.0),
                    Expanded(
                      // flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(chat.sender.name),
                              Text(chat.time),
                            ]
                          ),
                          SizedBox(height: 8.0),
                          Container(

                            height: MediaQuery.of(context).size.height / 15,
                            // decoration: BoxDecoration(
                            //     border:  Border(bottom: BorderSide(width: 0.5,color: Theme.Colors.warmGray),)
                            //   ), 
                             
                            child: Text(chat.text, overflow: TextOverflow.ellipsis,),
                          )
                        ]
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
