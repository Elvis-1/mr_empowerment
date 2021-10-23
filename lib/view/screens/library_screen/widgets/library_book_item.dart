import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryBookItem extends StatelessWidget {
  // const LibraryBookItem({Key? key}) : super(key: key);
    final String title;
    final String description;
    final String image;

    LibraryBookItem(this.title, this.description, this.image);

  @override
  Widget build(BuildContext context) {
    return Column(
         children: [
           Container(

               child: Image.asset(image, fit: BoxFit.fill,height: 100,)),
           SizedBox(height: 8,),
           Text(title, style: TextStyle(color: Colors.black,
               fontWeight: FontWeight.bold, fontSize: 20),),
           Text(description),
           Row(
             children: [
            Expanded(
              child: IconButton(onPressed: null, icon: Icon(Icons.download,
                color: Colors.indigo,),),
            ),
              Expanded(child: IconButton(onPressed: null,
                   icon: Icon(Icons.favorite_border)))

             ],
           ),
         ],
    );
  }
}
