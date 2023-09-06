void main() {
  var dictionary = new Map();
  dictionary["book"] = "kitap";
  dictionary["little"] = "küçük";
  dictionary["key"] = "anahtar";
  print(dictionary);
  var dictionary2 = {"kitap":"book","küçük":"little","anahtar":"key"};
  dictionary2["büyük"] = "big";
  print(dictionary2);
  dictionary.remove("book");
  print(dictionary);

  print(dictionary["little"]);

  for(var key in dictionary2.keys){
    print  (key + " : " + dictionary2[key]!);
  }
  for(var value in dictionary.values){
    print(value);
  }
  print(dictionary.containsKey("key"));
  dictionary2.forEach((k,v)=>{
    print(k+": " + v)
  });
}