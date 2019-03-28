import 'package:flutter/material.dart';
import '../messages_friends_data.dart';
import '../models/message_friend.dart';
import '../widgets/message_tile.dart';
import '../models/user_root.dart';

class MyDrawer extends StatefulWidget {
 
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final _idRoot = 0;
  final List<UserRoot> _user = getUser();
  final List<MessageFriend> _messagesFreindsData = getListMessagesFreinds();
//-------------------------------------------

  
  void _updateMessageState(int index) {
    /* ***********************************/    
    print('*********** update ***************');       
    print( _messagesFreindsData[index].readed);
    print('*********** ./ update ***************');   

     final  bool newReaded = !_messagesFreindsData[index].readed;
     final newMessage = MessageFriend(
      idFriend: _messagesFreindsData[index].idFriend,
      image: _messagesFreindsData[index].image,
      name: _messagesFreindsData[index].name,
      message:_messagesFreindsData[index].message,
      date: _messagesFreindsData[index].date,
      //* ************** VALUES TO UPDATE ************************  
      color: _messagesFreindsData[index].color,
      readed: newReaded,
     );
    setState(() {
      _messagesFreindsData[index]=newMessage;
    });
    /******************************* */
  }

  void _removeMessageState(int index){
    
    setState(() {
      if(_messagesFreindsData.length > 0){
       _messagesFreindsData.removeAt(index);
    }         
  });
  }

//------------------------------------------
  @override
  Widget build(BuildContext context) {    

    //*------------- Count of unReded messages ------------------
    var unReadMsg = 0;
      if(_messagesFreindsData.length >0){
          _messagesFreindsData.reduce((value, element) {
          if (element.readed == false) {
            //print('element :: $element');
            unReadMsg = unReadMsg + 1;
            return;
          }
      });
    }   

    print('unReadMsg :::/// $unReadMsg');
    //*-------------------------------
    final UserRoot _userRoot = _user[_idRoot];
    return Container(
      child: Stack(
        children: <Widget>[
          //**----------------------------------- */
          Positioned(
            left: 40.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(0xFF322843),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 60.0),           
            child: ListTile(
              //**-----------------AVATAR LEVEL 1------------------ */
              leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    '${_userRoot.imageUrl}',
                    //'assets/profile/user.jpg',
                  ),
                  radius: 28.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        )),
                    child: Container(),
                  )),
              //**---------------- Profile user ------------------- */

              title: Text(
                '${_userRoot.nameUser}',
                //'Barry Spenser',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                '''${_userRoot.emailUser} \n${unReadMsg.toString()} Unread Message(s)''',
                style: TextStyle(
                    fontSize: 14.0, color: Colors.white.withOpacity(0.5)),
              ),
              isThreeLine: true,
            ),
          ),

          //** ---------- List of message friends------------- */         

          Positioned(
              left: 20.0,
              child: Container(
                margin: EdgeInsets.only(top: 160.0, bottom: 500.0),
                padding: EdgeInsets.only(left: 5.0, right: 140.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 150.0,
                //-----------------------LIST VIEW------------------
                child:ListView.builder(
                  itemCount: _messagesFreindsData.length,
                  itemBuilder: (BuildContext context, int index){

                    //----- generate random color -----//
                   // String color = selectRandomColor();
                    //print('color :::: $color');
                    return MessageTile(
                            image: _messagesFreindsData[index].image,
                            name: _messagesFreindsData[index].name,
                            message: _messagesFreindsData[index].message,
                            date: _messagesFreindsData[index].date,
                            readed: _messagesFreindsData[index].readed,
                            color: _messagesFreindsData[index].color,
                            updateMessageState: _updateMessageState,
                            removeMessageState:_removeMessageState,
                            indexMsg:index
                          );
                  }),
                   
            )

              //---------------------------------
          )
        ],
      ),
    );
  }
}
