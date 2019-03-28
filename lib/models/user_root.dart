import './message_friend.dart';

class UserRoot {
  final String idUser;
  final String imageUrl;
  final String nameUser;
  final String emailUser;
  final int unreadMsg;
  final List<MessageFriend> listMessagesFriends;

  UserRoot({
    this.idUser,
    this.imageUrl,
    this.nameUser,
    this.emailUser,
    this.unreadMsg,
    this.listMessagesFriends,
  });
}
