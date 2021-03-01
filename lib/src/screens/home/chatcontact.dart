import 'package:flutter/material.dart';
import 'package:flutter_chat_app_demo/main.dart';
import 'package:flutter_chat_app_demo/src/blocs/socket/socket_bloc.dart';
import 'package:flutter_chat_app_demo/src/blocs/user/user_bloc.dart';
import 'package:flutter_chat_app_demo/src/mixins/style.dart';
import 'package:flutter_chat_app_demo/src/mixins/theme.dart' as Theme;
import 'package:flutter_chat_app_demo/src/model/user_model.dart';
import 'package:flutter_chat_app_demo/src/screens/home/chatchat_detail.dart';
import 'components/header.dart';
import 'components/search.dart';

class ChatContactPage extends StatefulWidget {
  ChatContactPage({Key key}) : super(key: key);

  @override
  ChatContactPageState createState() => ChatContactPageState();
}

class ChatContactPageState extends State<ChatContactPage> with  AutomaticKeepAliveClientMixin {
  
  final SocketBloc socketService = injector.get<SocketBloc>();
  final UserBloc blocUser= UserBloc();
  int limit=5;
  int pageIndex=0;

  @override
  void initState() {
    super.initState();
    blocUser.fetchAllUsers(context);
    blocUser.getUserInfo(context);
    socketService.connectToServer();
  }
  @override
  void dispose() {
    //blocUser.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
  
  @override
  
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.Colors.purpleMain,
        automaticallyImplyLeading: false,
        title: Container(
          child: Header('Contact'),
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
            // decoration: new BoxDecoration(color: Colors.red),
            margin: EdgeInsets.only(right: 22),
            child: InkWell(
                onTap: () {},
                child: Image(
                  image: AssetImage(
                    'assets/images/icon/icon_add.png',
                  ),
                  // fit: BoxFit.contain,
                  height: 23,
                  width: 23,
                )),
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Search(),
            Container(
              // decoration: new BoxDecoration(color: Colors.blue),
              padding: EdgeInsets.only(bottom: 15, top: 15),
              child: ListTile(
                  title: Row(
                children: [
                  StreamBuilder(
                    stream: blocUser.userInfo,
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                        'assets/images/avt_chat_setting.png'),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(snapshot.data.userName,
                                    style: TextStyle(
                                        color: Theme.Colors.grey343,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Proxima-Nova')),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(snapshot.data.number.toString(),
                                    style: TextStyle(
                                        color: Theme.Colors.grey666,
                                        fontSize: 14.0,
                                        fontFamily: 'Proxima-Nova-Regular')),
                              ],
                            ),
                          ],
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ],
              )),
            ),
            Container(
              decoration: new BoxDecoration(color: Theme.Colors.greyfef),
              padding: EdgeInsets.only(bottom: 12, top: 12, left: 15),
              child: Text('Contact',
                  style: TextStyle(
                      color: Theme.Colors.grey666,
                      fontSize: 17,
                      fontFamily: 'Proxima-Nova-Regular')),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
              // decoration: BoxDecoration(
              //   color: Colors.pink,
              // ),
              height: 50,
              child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                  title: Row(
                    children: [
                      // Expanded(
                      //   flex: 1,
                      // child:
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.Colors.purpleMain,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      // ),
                      // Expanded(
                      //   flex: 13,
                      // child:
                      Container(
                        width: width - 90,
                        height: 50,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: borderList,
                          ),
                        ),
                        child: Flex(
                          direction: Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Invite Friend',
                                style: TextStyle(
                                    color: Theme.Colors.purpleMain,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Proxima-Nova')),
                          ],
                        ),
                      ),
                      // ),
                    ],
                  )),
            ),
            Container(
                child: StreamBuilder(
              stream: blocUser.allUser,
              builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
                if (snapshot.hasData) {
                  return buidList(snapshot);
                } else if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                return Center(child: CircularProgressIndicator());
              },
            )),
          ],
        ),
      ),
    );
  }

  Widget buidList(AsyncSnapshot<List<UserModel>> snapshot) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            // color: Colors.pink,
            margin: new EdgeInsets.symmetric(vertical: 5.0),
            height: 70,
            child: ListTile(
                contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                title: Row(
                  children: [
                    // Expanded(
                    //   flex: 1,
                    // child:
                    Container(
                      width: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Container(
                          child: CircleAvatar(
                              radius: (30),
                              backgroundColor: Colors.white,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: snapshot.data[index].avatar.isEmpty
                                      ? Image.asset(
                                          'assets/images/avt_default.png')
                                      : Image.asset(
                                          snapshot.data[index].avatar)))),
                    ),
                    // ),
                    // Expanded(
                    //   flex: 4,
                    //   child:
                    Container(
                      width: MediaQuery.of(context).size.width - 90,
                      margin: EdgeInsets.only(left: 0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: borderList,
                        ),
                      ),
                      child: Flex(
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(snapshot.data[index].userName,
                              style: TextStyle(
                                  color: Theme.Colors.grey666,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Proxima-Nova')),
                          SizedBox(
                            height: 5,
                          ),
                          Text(snapshot.data[index].number.toString(),
                              style: TextStyle(
                                  color: Theme.Colors.grey666,
                                  fontSize: 14.0,
                                  fontFamily: 'Proxima-Nova-Regular')),
                        ],
                      ),
                    ),
                    // ),
                  ],
                )),
          ),
           onTap: () =>openDetailPage(snapshot.data[index], index),
        );
      },
    );
  }
  openDetailPage(UserModel data,int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>ChatChatDetail(user:data)),
    );
  }
}
