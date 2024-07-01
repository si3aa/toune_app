import 'package:flutter/material.dart';
import 'package:kh/models/class.dart';
import 'package:kh/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(sound:'note1.wav', color: Color(0xffF44336)),
    TuneModel(sound:'note2.wav', color: Color(0xffF89800)),
    TuneModel(sound:'note3.wav', color: Color(0xffFEEB3B)),
    TuneModel(sound:'note4.wav', color: Color(0xff4CAF50)),
    TuneModel(sound:'note5.wav', color: Color(0xff2F9688)),
    TuneModel(sound:'note6.wav', color: Color(0xff2896F3)),
    TuneModel(sound:'note7.wav', color: Color(0xff9C27B0)),
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff253238),
        title: const Text('TuneApp'),
      ),
      body: Column(
        children: tunes
      .map((e) => TuneItem(tune: e),
      )
      .toList(),
      ),
    );
  }
  // List <TuneItem> getTuneItems (){
  // List<TuneItem> items =[];

  //  for (var color in tuneColor) {
  //   items.add(TuneItem(color: color));

  //  }
  //    return items;
  // }
  //getTuneItems()
}
