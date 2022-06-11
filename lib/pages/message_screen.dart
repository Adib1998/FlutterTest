import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widget/message_card.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          title: Center(child: Text('Message')),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => MessageCard(userName: 'ad', messageContent: 'messageContent', day: 3, month: 3, year: 2000),
            itemCount: 10,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(255, 111, 0, 1),
          onPressed: (){},
          child: new Icon(Icons.search,size: 35,),
          elevation: 4.0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {  },
            items: [BottomNavigationBarItem(
              icon: Icon(Icons.home_filled,size: 30,),
              label: "Home",
            ), BottomNavigationBarItem(
              icon: Icon(Icons.message,size: 30,),
              label: "Message",
            ),]
        ),


      ),
    );
  }
}
