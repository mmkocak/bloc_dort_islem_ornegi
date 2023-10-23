import 'package:bloc_kullanimi2/process.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfsayi1 = TextEditingController();
  var tfsayi2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bloc Kullanımı"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 30, left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<HomeC, double>(
                builder: (context, sonuc){
                  return Text(
                    sonuc.toString(),
                    style: TextStyle(fontSize: 30),
                  );
                },
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
                        context.read<HomeC>().toplamaYap(alinanSayi1, alinanSayi2);
                      },
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      child: Text("Çarp"),
                      onPressed: () {
                        String alinansayi1 = tfsayi1.text;
                        String alinansayi2 =tfsayi2.text;
                        context.read<HomeC>().carpmaYap(alinansayi1, alinansayi2);
                      },
                    ),
                  ),
                ],
              ),
             // SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Text("Çıkarma"),
                      onPressed: () {
                        String alinanSayi1 = tfsayi1.text;
                        String alinanSayi2 = tfsayi2.text;
                        context.read<HomeC>().cikarmaYap(alinanSayi1, alinanSayi2);
                      },
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      child: Text("Bölme "),
                      onPressed: () {
                        String alinanSayi1 = tfsayi1.text;
                        String alinanSayi2 = tfsayi2.text;
                        context.read<HomeC>().bolmeYap(alinanSayi1, alinanSayi2);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
