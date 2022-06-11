import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widget/partner_card.dart';

class SuggestionsPartners extends StatelessWidget {
  const SuggestionsPartners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        bottomOpacity: 0.0,
        title: Center(child: Text('Suggestions partners')),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => PartnerCard(partnerName: 'partnerName', age: 12, restaurantName: 'rab', image: 'image'),
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
    );
  }
}
