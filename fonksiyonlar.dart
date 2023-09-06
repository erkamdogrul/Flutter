void main(){
  test1(1);
  test2("bu");
  test3(n2:2, n1: 3, n3:4);
}

void test1(int num1, [int num2 = 0, int num3 = 0] ){
  print(num1);
  print(num2);
  print(num3);
}

void test2(String text, [String text1 = "", String text2 = ""] ){
  print(text);
  print(text1);
  print(text2);
}

void test3({int n1 = 0, int n2 = 0, int n3 = 0}){
  print(n1.toString() + " " + n2.toString() + " " + n3.toString());
}