import 'dart:async';
import 'dart:io';
import 'package:flutter_chat_app_demo/src/database/message_table.dart';
import 'package:flutter_chat_app_demo/src/database/user_table.dart';
import 'package:flutter_chat_app_demo/src/model/chat_model.dart';
import 'package:flutter_chat_app_demo/src/model/user_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'chat_table.dart';
final todoTABLE = 'Todo';
class DBProvider {
  static final DBProvider db = DBProvider();

  Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await createDatabase();
    return _database;
  }
  //When database null, call createDatabase
  Future createDatabase() async {
    print("creating db");
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    //"ReactiveTodo.db is our database instance name
    String path = join(documentsDirectory.path, "TempDatabase.db");
    var database = await openDatabase(path,
        version: 1, 
        onCreate: (Database db, int version) async {
      await UserTable.createTable(db);
      await ChatTable.createTable(db);
      await MessageTable.createTable(db);
    }, onOpen: (Database db) async {
      // await UserTable.recreateTable(db);
      // await ChatTable.recreateTable(db);
      // await MessageTable.recreateTable(db);
    });
    return database;
  }
  //User========================================
   Future<UserModel> getUser(String id) async {
    final db = await database;
    final users = await db.rawQuery('''
      SELECT tb_user._id,
             tb_user.name,
             tb_user.username
      FROM tb_user
      WHERE tb_user._id = '$id'
    ''');
    if (users.length > 0) {
      return UserModel.fromLocalDatabaseJson(users.first);
    }
    return null;
  }

  Future<UserModel> createUser(UserModel user) async {
    try {
      final db = await database;
      await db.insert('tb_user', user.toLocalDatabaseJson());
      return user;
    } catch (err) {
      print("error $err");
      return user;
    }
  }

  Future<UserModel> createUserIfNotExists(UserModel user) async {
    final _user = await getUser(user.id);
    if (_user == null) {
      await createUser(user);
    }
    return user;
  }

  //ChatModel======================================
  Future<ChatModel> createChatIfNotExists(ChatModel chat) async {
    try {
      final db = await database;
      final chats = await db.rawQuery('''
        SELECT * FROM tb_chat
        WHERE _id = '${chat.roomId}'
      ''');
      if (chats.length == 0) {
        await db.insert('tb_chat', chat.toLocalDatabaseJson());
      }
      return chat;
    } catch (err) {
      print("error $err");
      return chat;
    }
  }

  //Future<ChatModel> createChatIfNotExists(ChatModel chat) async {
  //   try {
  //     final db = await database;
  //     final chats = await db.rawQuery('''
  //       SELECT * FROM tb_chat
  //       WHERE _id = '${chat.roomId}'
  //     ''');
  //     if (chats.length == 0) {
  //       await db.insert('tb_chat', chat.toLocalDatabaseMap());
  //     }
  //     return chat;
  //   } catch (err) {
  //     print("error $err");
  //     return chat;
  //   }
  // }

  // Future<List<MessageModel>> getChatMessages(String chatId) async {
  //   final db = await database;
  //   final maps = await db.rawQuery('''
  //     SELECT tb_message.id_message,
  //            tb_message._id,
  //            tb_message.from_user,
  //            tb_message.to_user,
  //            tb_message.message,
  //            tb_message.send_at,
  //            tb_message.unread_by_me
  //     FROM tb_message
  //     WHERE tb_message.chat_id = '$chatId'
  //     ORDER BY tb_message.send_at DESC
  //     LIMIT 25
  //   ''');
  //   if (maps.length > 0) {
  //     return maps
  //         .map((message) => Message.fromLocalDatabaseMap(message))
  //         .toList();
  //   }
  //   return [];
  // }

  // Future<void> readChatMessages(String id) async {
  //   final db = await database;
  //   await db.rawQuery('''
  //     UPDATE tb_message
  //     SET unread_by_me = 0
  //     WHERE chat_id = '$id'
  //   ''');
  // }

  // Future<List<Message>> getChatMessagesWithOffset(String chatId, int localMessageId) async {
  //   final db = await database;
  //   final maps = await db.rawQuery('''
  //     SELECT tb_message.id_message,
  //            tb_message._id,
  //            tb_message.from_user,
  //            tb_message.to_user,
  //            tb_message.message,
  //            tb_message.send_at,
  //            tb_message.unread_by_me
  //     FROM tb_message
  //     WHERE tb_message.chat_id = '$chatId'
  //     AND tb_message.id_message < $localMessageId
  //     ORDER BY tb_message.send_at DESC
  //     LIMIT 25
  //   ''');
  //   if (maps.length > 0) {
  //     return maps
  //         .map((message) => Message.fromLocalDatabaseMap(message))
  //         .toList();
  //   }
  //   return [];
  // }

  // Future<int> addMessage(Message message) async {
  //   final db = await database;
  //   final id = await db.insert('tb_message', message.toLocalDatabaseMap());
  //   return id;
  // }

  // Future<List<Chat>> getChatsWithMessages() async {
  //   final db = await database;
  //   final maps = await db.rawQuery('''
  //     SELECT tb_chat._id,
  //            tb_user._id as user_id,
  //            tb_user.name,
  //            tb_user.username,
  //            tb_message.id_message,
  //            tb_message._id as message_id,
  //            tb_message.from_user,
  //            tb_message.to_user,
  //            tb_message.message,
  //            tb_message.send_at,
  //            tb_message.unread_by_me
  //     FROM tb_chat
  //     INNER JOIN tb_message
  //       ON tb_chat._id = tb_message.chat_id
  //     INNER JOIN tb_user
  //       ON tb_user._id = tb_chat.user_id
  //     ORDER BY tb_message.send_at DESC
  //   ''');
  //   if (maps.length > 0) {
  //     List<Chat> chats = [];

  //     maps.toList().forEach((map) {
  //       if (chats.indexWhere((chat) => chat.id == map['_id']) == -1) {
  //         chats.add(Chat.fromLocalDatabaseMap(map));
  //       }
  //       final chat = chats.firstWhere((chat) => chat.id == map['_id']);
  //       final message = Message.fromLocalDatabaseMap({
  //           "_id": map['message_id'],
  //           "from": map['from_user'],
  //           "to": map['to_user'],
  //           "message": map['message'],
  //           "send_at": map['send_at'],
  //           "unread_by_me": map['unread_by_me'],
  //         });
  //         chat.messages.add(message);

  //     });

  //     return chats;
  //   }

  //   return [];
  // }


  Future<void> clearDatabase() async {
    final db = await database;
    await db.rawQuery("DELETE FROM tb_message");
    await db.rawQuery("DELETE FROM tb_chat");
    await db.rawQuery("DELETE FROM tb_user");
  }
}