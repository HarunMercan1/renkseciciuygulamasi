import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:renkseciciuygulamasi/constants/colors.dart';
import 'package:renkseciciuygulamasi/widgets/color_display.dart';

class ColorPickerPage extends StatefulWidget {
  const ColorPickerPage({super.key});

  @override
  State<ColorPickerPage> createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  
  Color selectedColor = Colors.green;
  bool isCircular = false;
  bool isShowColorName = true;
  
  void _rastgeleRenkSec() {
    final colors = renkler.keys.toList();
    final rastgeleSayi = Random().nextInt(colors.length);
    final randomColor = colors[rastgeleSayi];
    setState(() {
      selectedColor = randomColor;
      debugPrint(rastgeleSayi.toString());
    });
  }

  void _renginKodunuGoster() {
    Fluttertoast.showToast(
        msg: "RGB : (${selectedColor.red}, ${selectedColor.green}, ${selectedColor.blue})",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: selectedColor,
        textColor: Colors.white,
        fontSize: 24.0
    );
  }

    void _containerSekliniDegistir() {
      setState(() {
        isCircular = !isCircular;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Renk Seçici'),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                isShowColorName = !isShowColorName;
              });
            },
            itemBuilder: (context) {
            return [
              PopupMenuItem(
              value: 'a',
              child: Row(
                children: [
                  Icon(
                    isShowColorName ? Icons.visibility_off : Icons.visibility,
                    size: 20,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8,),
                  Text('Renk Adını Göster / Gizle')
                ],
              ),
            )
            ];
          },
          icon: Icon(Icons.more_vert)), 
        ],
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ColorDisplay(selectedColor: selectedColor, isCircular: isCircular),
              SizedBox(height: 10,),
              isShowColorName ?  Text(renkler[selectedColor] ?? 'Secilen Renk') : SizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DropdownButton<Color>(
                      value: selectedColor,
                      items: renkler.entries.map( (entry){
                      return DropdownMenuItem(
                        value: entry.key,
                        child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            color: entry.key,
                          ),
                          SizedBox(width: 4,),
                          Text(entry.value)
                        ],
                      ));
                    } ).toList(), onChanged: (value) {
                      setState(() {
                        selectedColor = value!;
                      });
                    },),
                    ElevatedButton(onPressed: _rastgeleRenkSec, child: Text('Rastgele')),
                    IconButton(onPressed: _renginKodunuGoster, icon: Icon(Icons.info)),
                    IconButton(onPressed: (){
                      _containerSekliniDegistir();
                    }, icon: Icon(isCircular ? Icons.square_outlined : Icons.circle_outlined))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  

  
}

