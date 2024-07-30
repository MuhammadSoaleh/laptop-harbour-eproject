import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
      backgroundColor: Colors.white,
      title: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image.network('data:image/png;base64,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',height: 50,width: 100,),
Icon(
      Icons.person_2,
      color: Colors.black,
      size: 36.0,
    ),
          Image.asset("assets/WhatsApp_Image_2024-07-26_at_11.12.40_PM-removebg.png", height:200,width:150,),
          // Image.network("data:image/png;base64,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",height: 50,width: 80,)
        Icon(
      Icons.search,
      color: Colors.black,
      size: 36.0,
    ),
     ],
      ),
      ),
    )
    ;
   }
}