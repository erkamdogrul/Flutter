void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  String message = "";

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(message),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show the result."),
          onPressed: () {
            int not = 50;
            if (not >= 50) {
              message = "Geçti";
            } else if (not >= 40) {
              message = "Bütünlemeye kaldı";
            } else {
              message = "Kaldı.";
            }
            var alert = AlertDialog(
              title: Text("Sınav Sonucu"),
              content: Text(message),
            );
            showDialog(
                context: context, builder: (BuildContext context) => alert);
          },
        ),
      ),
    );
  }
}
