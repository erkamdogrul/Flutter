void main(){
  //type safety
  List<String> urunler = new List.filled(5,"");
  urunler[0] = "Laptop";
  urunler[1] = "Mouse";
  urunler[2] = "Keyboard";
  urunler[3] = "Speakers";
  urunler[4] = "Headphones";
  print(urunler);

  var product1 = new Product("Laptop",25000);
  var product2 = new Product("Keyboard",500);
  List<Product> products = [product1,product2];
  print(products[0].name +" --> " + products[0].unitPrice.toString());
}
class Product{
  late String name;
  late double unitPrice;

  Product(String name, double unitPrice){
    this.name = name;
    this.unitPrice = unitPrice;
  }
}
