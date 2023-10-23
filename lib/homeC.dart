import 'package:flutter_bloc/flutter_bloc.dart';
class HomeC extends Cubit<int>{
  HomeC():super(0);
  void toplamaYap(String alinansayi1, String alinansayi2){
    int sayi1= int.parse(alinansayi1);
    int sayi2 = int.parse(alinansayi2);
    int topla = sayi1 + sayi2;
    emit(topla);
  }
  void carpmaYap(String alinansayi1, String alinansayi2){
    int sayi1 = int.parse(alinansayi1);
    int sayi2 = int.parse(alinansayi2);
    int carp = sayi1 * sayi2;
    emit(carp);
  }
}