import 'package:flutter/material.dart';

class VideoItem extends StatelessWidget {
  //const VideoItem({Key? key}) : super(key: key);
  // final VideoModel video;
  final String? title;
  final String? image;
  final String? description;

  VideoItem(
      {@required this.description, @required this.title, @required this.image});
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Container(
          child: Card(
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: Container(
                    child: Image.asset(
                      image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        //
                        style: Theme.of(context).textTheme.title,
                      ),
                      // Text(DateFormat('yyyy-MM-dd').format(tx.date),
                      Text(
                        description!,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                PopupMenuButton(onSelected: (int selectedValue) {
                  print(selectedValue);
                }, itemBuilder: (_) {
                  return [
                    PopupMenuItem(
                      child: Text('Yet to come',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                      value: 0,
                    ),
                    PopupMenuItem(
                      child: Text('Soon to come',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                      value: 1,
                    )
                  ];
                })
              ],
            ),
          ),
        ));
  }
}
