import 'package:flutter/material.dart';
import 'package:mr_empowerment/data/datasource/library_dummy_data.dart';
import 'package:mr_empowerment/view/screens/library_screen/widgets/library_book_item.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
            ),
            itemCount: library_books.length,
            itemBuilder: (ctx, index) => LibraryBookItem(
                library_books[index].title!,
                library_books[index].description!,
                library_books[index].image!,
            )

        ),
      ),
    );
  }
}
