import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartnerCard extends StatelessWidget {
  const PartnerCard(
      {Key? key,
      required this.partnerName,
      required this.age,
      required this.restaurantName,
      required this.image})
      : super(key: key);
  final String partnerName;
  final int age;
  final String restaurantName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 20,
                  blurRadius: 1,
                  offset: Offset(0, 4),
                ),
              ],
              color: Colors.white10,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/image.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Partner\'s name',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('Age', style: TextStyle(fontSize: 16)),
                    Text('Restaurant name:Name', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(255, 111, 0, 1)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                        style: BorderStyle.solid,
                        color: const Color.fromRGBO(255, 111, 0, 1))),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                Text(
                  'Send a message',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
