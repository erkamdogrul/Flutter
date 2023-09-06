void main() {
  //Fixed-length list
   List<int> sabitUzunlukluListe = List.filled(5,0);
   // sabitUzunlukluListe[0] = 1;
   // sabitUzunlukluListe[1] = 3;
   // sabitUzunlukluListe[2] = 5;
   // sabitUzunlukluListe[3] = 7;
   // sabitUzunlukluListe[4] = 9;
   print(sabitUzunlukluListe);

  //Growable List Another Way
  var Sehirler = [];
  print(Sehirler);
  Sehirler.add("Diyarbakır");
  print(Sehirler);
  Sehirler.add("Bilecik");
  Sehirler.add("Urfa");
  Sehirler.add("Adıyaman");
  print(Sehirler.where((s) => s.contains("a")));
  print(Sehirler.first);
  //Growable List Another Way
  var urunler = List.empty(growable: true);
  urunler.add("Laptop");
  urunler.add("Mic");

  print(urunler);
  print(urunler[1]);
}  
