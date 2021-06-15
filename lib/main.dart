import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new ListView(
          children: <Widget>[
            Profile(),
            Login(),
            builder(context),
            SignUp(),
            Other(context),
          ],
        ),
      ),
    );
  }
}

Widget Profile() {
  return Container(
    //padding:
    // const EdgeInsets.only(left: 24.0, top: 12.0, right: 24.0, bottom: 12.0),
    child: new Row(children: [
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.only(
                  left: 32.0, top: 12.0, right: 24.0, bottom: 12.0),
              child: new Text("Ваш профиль",
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
            ),
          ],
        ),
      ),
    ]),
  );
}

Widget Login() {
  return new Container(
    padding: const EdgeInsets.all(32.0),
    child: Text(
      "Войдите в аккаунт и начните поддерживать  и создавать проектыжджюьб",
      style: TextStyle(fontSize: 17),
      softWrap: true,
    ),
  );
}

@override
Widget builder(BuildContext context) {
  // final ButtonStyle style =
  //  ElevatedButton.styleFrom(ButtonStyle:  textStyle: const TextStyle(fontSize: 16));

  return Center(
    child: Column(
      //mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 48.0, width: 310.0),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFFF7D5A),
            padding: EdgeInsets.symmetric(horizontal: 160, vertical: 19),
          ),
          onPressed: () {},
          child: const Text(
            'Войти',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    ),
  );
}

Widget SignUp() {
  return Container(
      padding: const EdgeInsets.only(
          left: 32.0, top: 32.0, right: 24.0, bottom: 12.0),
      child: Row(textDirection: TextDirection.ltr, children: <Widget>[
        Container(
            child: Text(
          'Нет аккаунта?   ',
          style: TextStyle(color: Colors.grey[700], fontSize: 14),
          textDirection: TextDirection.ltr,
        )),
        Container(
            child: Text(
          'Зарегистрируйтесь',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            decoration: TextDecoration.underline,
          ),
          textDirection: TextDirection.ltr,
        )),
      ]));
}

Widget Other(BuildContext context) {
  Container Other(String label, IconData icon) {
    // Color color = Theme.of(context).primaryColor;
    return Container(
        padding: const EdgeInsets.only(
            left: 12.0, top: 12.0, right: 24.0, bottom: 12.0),
        child: Row(
          //mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            new Container(
              margin: const EdgeInsets.only(top: 12.0, left: 24.0, right: 24),
              child: new Text(
                label,
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  // color: color,
                ),
              ),
            ),
            Icon(icon),
            //color: color),
          ],
        ));
  }

  return new Container(
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Other(
        'Настройки',
        Icons.settings,
      ),
      Other(
        'Поддержка',
        Icons.question_answer,
      ),
      Other(
        'Узнайте как создать Проект',
        Icons.post_add,
      ),
    ]),
  );
}
