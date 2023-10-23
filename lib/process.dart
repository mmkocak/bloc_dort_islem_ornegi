import 'package:flutter_bloc/flutter_bloc.dart';
class HomeC extends Cubit<double>{
  HomeC():super(0);
  void toplamaYap(String alinansayi1, String alinansayi2){
    double sayi1= double.parse(alinansayi1);
    double sayi2 = double.parse(alinansayi2);
    double topla = sayi1 + sayi2;
    emit(topla);
  }
  void carpmaYap(String alinansayi1, String alinansayi2){
    double sayi1 = double.parse(alinansayi1);
    double sayi2 = double.parse(alinansayi2);
    double carp = sayi1 * sayi2;
    emit(carp);
  }
  void cikarmaYap(String alinansayi1 , String alinanSayi2){
    double sayi1 = double.parse(alinansayi1);
    double sayi2 = double.parse(alinanSayi2);
    double cikar = sayi1 - sayi2;
    emit(cikar);
  }
  void bolmeYap(String alinansayi1 , String alinanSayi2){
    double sayi1 = double.parse(alinansayi1);
    double sayi2 = double.parse(alinanSayi2);
    double cikar = sayi1 / sayi2;
    emit(cikar);
  }
}

