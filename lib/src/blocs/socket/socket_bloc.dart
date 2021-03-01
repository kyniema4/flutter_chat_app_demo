import 'package:flutter_chat_app_demo/src/blocs/chat/chat_bloc.dart';
import 'package:flutter_chat_app_demo/src/blocs/chat/chat_bloc.dart';
import 'package:flutter_chat_app_demo/src/model/chat_model.dart';
import 'package:flutter_chat_app_demo/src/model/message_model.dart';
import 'package:flutter_chat_app_demo/src/providers/provider.dart';
import 'package:flutter_chat_app_demo/src/repositories/base_url.dart';
import 'package:flutter_chat_app_demo/src/repositories/repository.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

final ChatBloc blocChat = ChatBloc();
class SocketBloc implements BlocBase {
  final baseUrl = BaseUrl;
  IO.Socket socket;
  bool connected = false;
  final _respository = new Repository();

    // Socket socket;
  
    // final _socket= BehaviorSubject();
  
    // Function(Socket) get setSocket =>_socket.sink.add(socket);
  
    // Stream<Socket> get socket =>_socket.stream;
    sendMessage(data, id,roomId) async {
      var user = await _respository.getUserInfo();
      if ((connected) && (user != null)) {
        print("emit send message");
        socket.emit(
          "message_client",
          ChatModel(
            roomId: roomId,
            idSender: user.id,
            idReceive: id,
            sender: user.userName,
            content: data,
            unRead: false,
            isCheck: false,
            time: DateTime.now(),
          ).toJson(),
        );
      } else {
        print('Unable to directly send your message since we are not connected.');
      }
    }
  
    joinRoom(String roomId) {
      if ((connected) && (roomId != null)) {
        socket.emit('join', {'roomId':roomId});
      } else {
        print('Join Room is error');
      }
    }
  
    void connectToServer() {
      try {
        socket = io('$baseUrl', <String, dynamic>{
          'transports': ['websocket'],
          'autoConnect': false,
        });
  
        socket.connect();
        socket.emit(
          'join',
        );
        socket.on('connect', (_) {
          print('connect: ${socket.id}');
          connected = true;
        });
        
        socket.on('message', (data) => blocChat.addMessageListChat(data['msg']));
        //socket.on('message', (data) =>print(data['msg']));
        socket.on('disconnect', (_) => print('disconnect'));
      } catch (e) {
        print(e.toString());
      }
    }
  
    // Send update of user's typing status
    sendTyping(bool typing) {
      socket.emitWithAck("typing", {
        "id": socket.id,
        "typing": typing,
      });
    }
  
    void dispose() {
      //_socketResponse.close();
    }
  
    static ChatBloc() {}
}

SocketBloc socketBloc = SocketBloc();
