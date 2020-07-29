import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'chatContent.dart';
// import 'chatChat.dart';

class ChatContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/chatchat_edit');
      },
      // onTap: () => print("Container pressed"), // handle your onTap here
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: List.generate(
            20,
            (index) => Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avt_Friend.png'),
                  ),
                ),
                Expanded(
                    flex: 6,
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1.0, color: Color(0xFFFF000000)),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 5,
                                child: Text('uhytu'),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('dsgf'),
                              )
                            ],
                          ),
                          Text(
                            'gfhfthf asbefuef f ewrfe sfewhyf ew 4yrtewiogtyew8ygew ytgewhg yewrygergh eryhgeri ery ',
                            textDirection: TextDirection.ltr,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
