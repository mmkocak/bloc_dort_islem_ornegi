class Process{
  // Bloc gereği elimizden geldiği kadar parçalama yapıyoruz işlemleri respostroy kısmına aldık düzenlemesi ve okuması daha kolay oluyor
  double toplamaYap(String alinansayi1, String alinansayi2){
    double sayi1= double.parse(alinansayi1);
    double sayi2 = double.parse(alinansayi2);
    double topla = sayi1 + sayi2;
    return topla;
  }
  double carpmaYap(String alinansayi1, String alinansayi2){
    double sayi1 = double.parse(alinansayi1);
    double sayi2 = double.parse(alinansayi2);
    double carp = sayi1 * sayi2;
    return carp;
  }
  double cikarmaYap(String alinansayi1 , String alinanSayi2){
    double sayi1 = double.parse(alinansayi1);
    double sayi2 = double.parse(alinanSayi2);
    double cikar = sayi1 - sayi2;
    return cikar;
  }
  double bolmeYap(String alinansayi1 , String alinanSayi2){
    double.parse(alinansayi1);
    double sayi1 = double.parse(alinansayi1);
    double sayi2 = double.parse(alinanSayi2);
    double bol = sayi1 / sayi2;

    return bol;
  }
}