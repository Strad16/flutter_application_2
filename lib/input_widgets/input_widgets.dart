import 'package:flutter/material.dart';

class InputWidgets extends StatefulWidget {
  const InputWidgets({super.key});

  @override
  State<InputWidgets> createState() => _InputWidgetsState();
}

class _InputWidgetsState extends State<InputWidgets> {
  final TextEditingController _namaTextController =TextEditingController() ;
  // Flag untuk swith
  bool ligthON = false;

  bool agree = false;

  String? languages;
  // Menghapus controller ketika halaman / widgetnya
  // sudah tidak di gunakan
  // agar tidak terjadi kebocoran memory (memory leak)
  @override
  void dispose(){
    _namaTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Input Widget"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            child: TextField(
              controller: _namaTextController,
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey[300],
                hintText: "Masukan nama anda...",
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  ),
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(height: 20,),
          FilledButton.tonal(
            onPressed: () {
            showDialog(
              context: context, 
              builder: (context) {
                return AlertDialog(
                  content: Text("Hallo, ${_namaTextController.text}"),
                );
              },
            );
          }, child: Text("Sudmit")),
          SizedBox(height: 30),
          Switch(
            value: ligthON, 
            onChanged: (bool value) {
              setState(() {
                ligthON = value;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar
                  (content: Text(ligthON ? 'Light On' : 'Light Off'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
          ),
          SizedBox(height: 30),
          ListTile(
            leading: Checkbox(
              value: agree, 
              onChanged: (bool? value) {
                setState(() {
                  agree = value!;
                });
              },
            ),
            title: Text("Agree/ Disagree"),
          ),

          SizedBox(height: 30),
          ListTile(
            leading: Radio(
              value: "Dart", 
              groupValue: languages, 
                onChanged: (String? value) {
                  setState(() {
                    languages = value;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("$languages selected"),
                      duration: const Duration(seconds: 1),
                    )
                  );
                },
              ),
              title: Text("Dart"),
          ),

          ListTile(
            leading: Radio(
              value: "JavaScript", 
              groupValue: languages, 
                onChanged: (String? value) {
                  setState(() {
                    languages = value;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("$languages selected"),
                      duration: const Duration(seconds: 1),
                    )
                  );
                },
              ),
              title: Text("JavaScript"),
          )
        ],
      ),
    );
  }
}