import 'package:flutter/material.dart';
import 'models/student.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  static const String title = "Öğrenci Takip Sistemi";
  List<Student> students = [
    Student("Erkam", "Doğrul", 25),
    Student("Okan", "Çezik", 65),
    Student("Mehmet", "Kıran", 45)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: buildBody(context));
    throw UnimplementedError();
  }

  String giveResult(int examPoint) {
    String message;
    if (examPoint >= 50) {
      message = "Geçti";
    } else if (examPoint >= 40) {
      message = "Bütünlemeye kaldı";
    } else {
      message = "Kaldı.";
    }
    return message;
  }

  void showAlert(BuildContext context, String message) {
    var alert = AlertDialog(
      title: const Text("Sınav Sonucu"),
      content: Text(message),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              return ListTile(
                  leading:
                      CircleAvatar(backgroundImage: getNetworkImage(index)),
                  title: Text(students[index].firstName +
                      " " +
                      students[index].lastName),
                  subtitle:
                      Text("Sınavdan aldığı not: ${students[index].grade}"),
                  trailing: buildStatusIcon(students[index].grade),
                  onTap: () {
                    print(students[index].firstName +
                        " " +
                        students[index].lastName);
                  });
            },
          ),
        ),
        Center(
          child: ElevatedButton(
            child: Text("asdasdasdasdasd the result!!!!!!"),
            onPressed: () {
              var resultMessage = giveResult(55);
              showAlert(context, resultMessage);
            },
          ),
        ),
      ],
    );
  }

  buildStatusIcon(int grade) {
    if (grade >= 50) {
      return Icon(Icons.done);
    } else if (grade >= 40) {
      return Icon(Icons.album);
    } else {
      return Icon(Icons.clear);
    }
  }

  NetworkImage getNetworkImage(int studentIndex) {
    switch (studentIndex) {
      case 0:
        return NetworkImage(
            "https://media.licdn.com/dms/image/D4D03AQHB3bs6EWGvjQ/profile-displayphoto-shrink_800_800/0/1686381549353?e=2147483647&v=beta&t=biO_zGDUsASGLWB5xmiepjNeJYgdzbQ5W0v0WWtWDh4");
      case 1:
        return NetworkImage(
            "https://media.licdn.com/dms/image/C4D03AQGjhuyHJYcxWg/profile-displayphoto-shrink_800_800/0/1661083920288?e=1698278400&v=beta&t=2zmiQ2Dhh1W9tUXTr4Z5iBzSTOOYVYHMfVWGSh76re0");
      case 2:
        return NetworkImage(
            "https://media.licdn.com/dms/image/D4D03AQGESl9LqZ4ftg/profile-displayphoto-shrink_400_400/0/1682425632735?e=1698278400&v=beta&t=a1mIk1e8NoKHvxurauD36tyE9tTFP_zTLiQlRiBWtCM");
    }
    return NetworkImage("");
  }
}
