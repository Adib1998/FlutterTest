import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        bottomOpacity: 0.0,
        title: Center(child: Text('Home')),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/welcome.png',
          fit: BoxFit.fill,
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
    );
  }
}
