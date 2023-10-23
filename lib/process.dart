import 'package:bloc_kullanimi2/processRepositroy.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeC extends Cubit<double>{
  HomeC():super(0);
  // Yapmış olduğumuz işlemleri burada cubit kapsamına alıyoruz

  // Toplama İşlemini burada emit ettik, emit arayüze gönderdi
  void toplamaYap(String alinansayi1, String alinansayi2){
    emit(Process().toplamaYap(alinansayi1, alinansayi2));
  }

  // Çarpma İşlemini burada emit ettik, emit arayüze gönderdi
  void carpmaYap(String alinansayi1, String alinansayi2){
    emit(Process().carpmaYap(alinansayi1, alinansayi2));
  }

  // Çıkarma İşlemini burada emit ettik, emit arayüze gönderdi
  void cikarmaYap(String alinansayi1 , String alinanSayi2){
    emit(Process().cikarmaYap(alinansayi1, alinanSayi2));
  }

  // Bölme İşlemini burada emit ettik, emit arayüze gönderdi
  void bolmeYap(String alinansayi1 , String alinanSayi2){
    emit(Process().bolmeYap(alinansayi1, alinanSayi2));
  }
}

