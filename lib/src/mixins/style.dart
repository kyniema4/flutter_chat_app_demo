import 'package:flutter/material.dart';
import 'theme.dart' as Theme;
//list style of onboading page
final titleSlideStyle = TextStyle(
    color: Colors.white,
    fontSize: 30.0,
    fontFamily: 'Proxima-Nova');

final contentSlideStyle = TextStyle(
  color: Colors.white,
  fontSize: 17.0,
  fontFamily: 'Proxima-Nova-Regular'
);

final letStartBtn = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Theme.Colors.black63b,
    fontFamily: 'Proxima-Nova');

final textTitleSetting = TextStyle(
  fontSize: 17.0,
  color: Theme.Colors.grey666,
  fontWeight: FontWeight.bold,
  fontFamily: 'Proxima-Nova',
);

//list style of chatchat_page
final listItemStyle = EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0, bottom: 18.0);

final listItemEditStyle = EdgeInsets.only(top: 0.0, left: 5.0, right: 20.0, bottom: 18.0);

final marginBottom20 = EdgeInsets.only(bottom: 20.0);

final borderList = BorderSide(width: 0.5,color: Theme.Colors.warmGray);

final nameUserList = TextStyle(
  fontFamily: 'Proxima-Nova',
  color: Theme.Colors.grey400,
  fontSize: 16.0
);

final textChatList = TextStyle(
  fontFamily: 'Proxima-Nova-Regular',
  color: Theme.Colors.grey350,
  fontSize: 15.0
);

final timeChat = TextStyle(
  fontFamily: 'Proxima-Nova-Regular',
  color: Theme.Colors.grey350,
  fontSize: 14.0
);

//bottom bar style of chatchat_edit
final deleteBarStyle = BoxDecoration(
  color: Theme.Colors.grey100,
  border: Border(
    top: BorderSide(width: 0.5, color: Theme.Colors.warmGray )
  ),
);

final deleteButtonStyle = TextStyle(
  color: Colors.white,
  fontSize: 16.0,
  fontFamily: 'Proxima-Nova'
);

//style message item of chatchat_detail pages
final isMeBorderRadius6 = BorderRadius.only(
  topLeft: Radius.circular(6.0),
  topRight: Radius.circular(6.0),
  bottomLeft: Radius.circular(6.0),
);

final isFriendBorderRadius6 = BorderRadius.only(
  topLeft: Radius.circular(6.0),
  topRight: Radius.circular(6.0),
  bottomRight: Radius.circular(6.0),
);

final messageBoxShadow = BoxShadow(
  color: Theme.Colors.purpleMain.withOpacity(0.2),
  spreadRadius: 1,
  blurRadius: 5,
  offset: Offset(0, 3), // changes position of shadow
);

final paddingBottom13 = EdgeInsets.only(bottom: 13.0);

final paddingBottom15 = EdgeInsets.only(bottom: 15.0);

final textInputStyle = TextStyle(fontFamily: 'Proxima-Nova-Regular', fontSize: 16.0);

final titleUserMessage = TextStyle(fontSize: 20, fontFamily: 'Proxima-Nova-Regular');

final textOnlineStyle = TextStyle(fontSize: 12, fontFamily: 'Proxima-Nova-Regular');
                              

