import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeLibrary extends StatelessWidget {
  const HomeLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0),
      ),
      child: ListView(
        addAutomaticKeepAlives: true,scrollDirection: Axis.horizontal,

        children: [
          book('assets/images/book1.jpg'),
          book('assets/images/book2.jpg'),
          book('assets/images/book1.jpg'),
          book('assets/images/book2.jpg'),
          book('assets/images/book1.jpg'),
          book('assets/images/book2.jpg'),
          book('assets/images/book1.jpg'),
          book('assets/images/book1.jpg'),

        ],
      )
    );
  }
}
Widget book(String book){
  return Card(
    elevation: 15,
    child: Container(
      padding: EdgeInsets.only(right: 15),
      height: 250,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Image.asset(book,fit: BoxFit.cover,),
    ),
  );
}