import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfsayi1 = TextEditingController();
  var tfsayi2 = TextEditingController();

  int sonuc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Kullanımı"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 30, left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                sonuc.toString(),
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                controller: tfsayi1,
                decoration: InputDecoration(hintText: "Sayı 1"),
              ),
              TextField(
                controller: tfsayi2,
                decoration: InputDecoration(hintText: "Sayı 2"),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Text("Toplama"),
                      onPressed: () {
                        String alinanSayi1 = tfsayi1.text;
                        String alinanSayi2 = tfsayi2.text;
                        int sayi1= int.parse(alinanSayi1);
                        int sayi2 = int.parse(alinanSayi2);
                        int topla= sayi1+sayi2;
                        setState(() {
                          sonuc = topla;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      child: Text("Çarp"),
                      onPressed: () {
                        String alinansayi1 = tfsayi1.text;
                        String alinansayi2 =tfsayi2.text;
                        int sayi1 = int.parse(alinansayi1);
                        int sayi2 = int.parse(alinansayi2);
                        int carp = sayi1 * sayi2;
                        setState(() {
                          sonuc = carp;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
