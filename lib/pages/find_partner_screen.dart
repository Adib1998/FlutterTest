import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widget/default_text_filed.dart';
import 'package:untitled/Widget/drop_down.dart';
import 'package:untitled/Widget/oval_button.dart';

class FindPartnerScreen extends StatelessWidget {
  FindPartnerScreen({Key? key}) : super(key: key);

  TextEditingController fromAge = TextEditingController();
  TextEditingController toAge = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController cityIdController = TextEditingController();
  TextEditingController countryIdController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          title: Center(child: Text('Find a Partner')),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultDropDown(hintText: 'Country', list: ['syr','leb','jp','jor'], controller: countryIdController,),
              SizedBox(height: 10,),
              DefaultDropDown(hintText: 'City', list: ['Damas','bu','tok','amm'], controller: cityIdController,),
              SizedBox(height: 10,),
              DefaultDropDown(hintText: 'Partner\'s gender', list: ['Male','Female'], controller: genderController,),
              SizedBox(height: 30,),
              Text('Partner\'s age:'),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(child: Center(child: Text('Between:'))),
                  Expanded(child: DefaultTextFiled(hintText: 'Age',keyboardType: TextInputType.phone, controller: fromAge,)),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(child: Center(child: Text('and:'))),
                  Expanded(child: DefaultTextFiled(hintText: 'Age',keyboardType: TextInputType.phone, controller: toAge,)),
                ],
              ),
              SizedBox(height: 10,),
              TextField(
                  decoration: InputDecoration(
                    hintText: 'Date: / /',
                    suffixIcon:Icon(Icons.calendar_today) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: const Color.fromRGBO(59, 59, 59, 1),
                      ),
                    ),
                  ),
                onTap: (){
                  showDatePicker(context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.parse('2022-12-01'),);
                },
                readOnly: true,
              ),
              SizedBox(height: 10,),
              OvalButton(onPressed: (){}, title: 'Search', backgroundColor: const Color.fromRGBO(255, 111, 0, 1)),
            ],
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
