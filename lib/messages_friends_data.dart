import './models/message_friend.dart';
import './models/user_root.dart';
//import'dart:math';

//***************************** */
/*------------------------ RANDOM COLOR
final List<String> colors = ['0xFF0b9ffe','0xFFf0bc68','0xffe04a93','0xFF9594a4','0xFFb790e8','0xFF98cc73'];
int indexInt = -1;
String selectRandomColor() {
  Random random = new Random();
  
  int index = 0;  
  index = random.nextInt(colors.length);
 
  if( index == indexInt ) {    
     indexInt = random.nextInt(colors.length);       
  }else{
    indexInt = index; 
  }
   return colors[index];
}*/
 //******************************* */
List<UserRoot> getUser() {
  return [
    UserRoot(
      idUser: '1',
      imageUrl: 'assets/profile/user_1.jpg',
      nameUser: 'Mouallem Mohamed',
      emailUser: 'enafor99@gmail.com',
      unreadMsg: 5,
      listMessagesFriends: null,
    ),
  ];
}
//*************************************** */
List<MessageFriend> getListMessagesFreinds() {
  return [
    MessageFriend(
      idFriend: '1',
      image: 'assets/profile/1.jpg',
      name: 'Adam Baker',
      message:
          'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
      date: '13:55',
      color: '0xFF0b9ffe',
      readed: true,
    ),
    MessageFriend(
      idFriend: '2',
      image: 'assets/profile/2.jpg',
      name: 'Michele Martinez',
      message:
          'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
      date: '13:42',
      color: '0xFFf0bc68',
      readed: false,
    ),
    MessageFriend(
      idFriend: '3',
      image: 'assets/profile/3.jpg',
      name: 'ken campbell',
      message:
          'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
      date: '13:13',
      color: '0xffe04a93',
      readed: true,
    ),
    MessageFriend(
      idFriend: '4',
      image: 'assets/profile/4.jpg',
      name: 'Luis Collins',
      message:
          'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
      date: '12:00',
      color: '0xFF9594a4',
      readed: false,
    ),
    MessageFriend(
      idFriend: '5',
      image: 'assets/profile/5.jpg',
      name: 'Douglas Garrett',
      message:
          'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
      date: '11:36',
      color: '0xFFf0bc68',
      readed: true,
    ),
    MessageFriend(
      idFriend: '6',
      image: 'assets/profile/6.jpg',
      name: 'Lester Wallace',
      message:
          'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
      date: '10:05',
      color: '0xFF516bf0',
      readed: true,
    ),
    MessageFriend(
      idFriend: '7',
      image: 'assets/profile/7.jpg',
      name: 'Christy Morales',
      message:
          'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
      date: '10:05',
      color: '0xFF98cc73',
      readed: false,
    ),
    MessageFriend(
      idFriend: '8',
      image: 'assets/profile/8.jpg',
      name: 'Michele Martinez',
      message:
          'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
      date: '10:05',
      color: '0xffe04a93',
      readed: false,
    ),
    MessageFriend(
      idFriend: '9',
      image: 'assets/profile/9.jpg',
      name: 'Douglas Garrett',
      message:
          'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
      date: '10:05',
      color: '0xFFf0bc68',
      readed: false,
    ),
    MessageFriend(
      idFriend: '10',
      image: 'assets/profile/10.jpg',
      name: 'Abigail Cox',
      message:
          'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
      date: '10:05',
      color: '0xFF98cc73',
      readed: false,
    ),
  ];
}
