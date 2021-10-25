import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/audio_list_screens/widgets/audio_item.dart';
import 'package:mr_empowerment/view/screens/home_screen/widget/home_library.dart';
import 'package:mr_empowerment/view/screens/home_screen/widget/home_video.dart';
import 'package:provider/provider.dart';
import '../../../providers/audio_provider.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final temporaryData = Provider.of<AudioProvider>(context)
        .audios
        .firstWhere((element) => element.id == 'a1');

    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeVideo(),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                         Container(
                          width: 120,
                          height: 220,
                          child: Center(
                            child: AudioItem(
                                id: temporaryData.id,
                                audio: temporaryData.id,
                                title: temporaryData.title,
                                image: temporaryData.image,
                                description:temporaryData.description),
                          ),
                        ),


                      Container(
                        width:120,
                        height: 220,
                        child:AudioItem(
                            id: temporaryData.id,
                            audio: temporaryData.id,
                            title: temporaryData.title,
                            image: temporaryData.image,
                            description:temporaryData.description),
                      ),

                    ],
                  ),
             SizedBox(height: 10,),
             HomeLibrary(),
            ],
          ),
        ),
      ),
    );
  }
}
