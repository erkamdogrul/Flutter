void main(){
  var personelManager =  PersonelManager();
  personelManager.add();
  
  PersonelManager personelManager1 =  PersonelManager();
  personelManager1.add();
  
  var customer =  Customer.withInfo("ERKAM","DOĞRUL");
  print(customer.firstName + " " +customer.lastName);
  
  var customer2 =  Customer();
  customer2.firstName = "customer";
  customer2.lastName = "customeroğulları";
  var customerManager = CustomerManager();
  
  Person customer3 = new Customer.withInfo("Ali", "Yılmaz");
  customerManager.add(customer3);

  customer = customer2;
  customer2.firstName = "Hakan";
  customerManager.add(customer);

  Person person1 = new Person();
  Person person2 = new Customer();
  Customer customer4 = new Customer();
}
//Scaffold, AppBar, Text vs. hepsi birer class'tır.
class PersonelManager{
  void add(){
    print("Added");
  }
}

class Customer extends Person{
 
  Customer(){

  }

  Customer.withInfo(String firstName, String lastName){
    this.firstName = firstName;
    this.lastName = lastName;
  }
  // String? firstName,lastName;
  // Customer({this.firstName,this.lastName}); 
}

class Personel extends Person{
  late int dateOfStart;
  
  Personel(){
    
  }

  Personel.withInfo(String firstName, String lastName, int dateOfStart){
    this.firstName = firstName;
    this.lastName = lastName;
    this.dateOfStart = dateOfStart;
  }
}

class CustomerManager{
  void add(Person person){
    print("Eklendi: " + person.firstName);
  }
}

class Person{
  late String firstName;
  late String lastName;
}