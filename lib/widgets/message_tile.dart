import 'package:flutter/material.dart';
import '../custom_icons/custom_icon.dart';

class MessageTile extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final String date;
  final bool readed;
  final String color;
  final int indexMsg;
  final Function updateMessageState;
  final Function removeMessageState;
  MessageTile(
      {this.image,
      this.name,
      this.message,
      this.date,
      this.readed,
      this.color,
      this.updateMessageState,
      this.removeMessageState,
      this.indexMsg,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //---------------------------------
          Container(
            width: 56.0,
            //**-----------------AVATAR LEVEL 2------------------ */
            child: CircleAvatar(
                backgroundImage: AssetImage(
                  '$image',
                ),
                radius: 28.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      )
                  ),
                  child: Container(),
                )),
            //**----------------------------------- */
          ),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            //----------------------------------------
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color( int.parse(color) ),
                borderRadius: BorderRadius.circular(12.0),               
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1.0, 2.0),
                    blurRadius: 2,
                    color: Colors.black.withOpacity(0.3)
                  )
                ]
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '$name',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '$date',
                        //'13:55',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      '$message',
                      //'Le Lorem Ipsum est simplement du faux texte employé dans la composition...',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                  ),
                  //************ Check button - readed message************/
                  Container(
                    height: 32.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,                    
                      children: <Widget>[
                           IconButton(
                           onPressed: () {
                             //*********************** */
                             //if (readed) return;
                             updateMessageState(indexMsg);
                             //print('indexMsg:::: $indexMsg ---- $readed');
                           },
                           icon: Opacity(
                             opacity: 0.75,
                             child: readed
                                 ? Icon(
                                     CustomIcons.book_open,
                                     size: 24.0,                                
                                   )
                                 : Icon(
                                     CustomIcons.check_circle,
                                     size: 24.0,
                                   ),
                           ),
                         ),
                         //------------------

                         IconButton(
                           onPressed: () {
                             //*********************** */
                              // print('indexMsg to remove:::: $indexMsg ');
                               removeMessageState(indexMsg);                          
                           },
                           icon: Opacity(
                             opacity: 0.75,
                             child: Icon(
                                     CustomIcons.delete,
                                     size: 24.0,                                
                                   )                               
                           ),
                         ),                    
                         
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            //----------------------------------------
          ),
        ],
      ),
    );
  }
}
