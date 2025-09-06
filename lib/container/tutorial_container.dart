import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TutorialContainer extends StatelessWidget {
  const TutorialContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container"),),
      body: Center(child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text("Container tanpa decoration"),
              SizedBox(height: 10,),
              Container(
                color: Colors.blue,
                width: 200,
                height: 100,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                child: Text("Budi Luhur"),
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text("Container  dengan Decoration"),
                  SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 15,
                          offset: Offset(2, 2)
                        )
                      ]
                    ),
                    child: Text("Budi Luhur"),
                  )
                ],
              )
            ],
          )
        ],
      ) ,),
    );
  }
}