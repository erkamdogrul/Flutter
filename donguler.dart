void main(){
  var products = ["Laptop", "Mouse", "Keyboard"];
  for(var i=0; i<products.length; i++){
    print(products[i]);
  }
  for(var product in products){
    print(product);
  }
  int number = 10;
  while(number<20){
    print(number++);
  }
  int numberTwo = 10;
  do{
    print("Number2 equals " + numberTwo.toString());
  }while(numberTwo >1000);
}