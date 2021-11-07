import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  var num1, num2, sum;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  void _add() {
    try {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      setState(() {
        sum = num1 + num2;
      });
    } catch (e) {
      setState(() {
        sum = 0;
      });
    }
  }

  void _sub() {
    try {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      setState(() {
        sum = num1 - num2;
      });
    } catch (e) {
      setState(() {
        sum = 0;
      });
    }
  }

  void _mul() {
    try {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      setState(() {
        sum = num1 * num2;
      });
    } catch (e) {
      setState(() {
        sum = 0;
      });
    }
  }

  void _div() {
    try {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      setState(() {
        sum = num1 / num2;
      });
    } catch (e) {
      setState(() {
        sum = 0;
      });
    }
  }

  void _mod() {
    try {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      setState(() {
        sum = num1 % num2;
      });
    } catch (e) {
      setState(() {
        sum = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Калькулятор')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Ответ: ${sum ?? 0}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
              TextField(
                decoration:
                    InputDecoration.collapsed(hintText: 'Введите 1 число'),
                controller: t1,
                keyboardType: TextInputType.number,
              ),
              TextField(
                decoration:
                    InputDecoration.collapsed(hintText: 'Введите 2 число'),
                controller: t2,
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(onPressed: _add, child: Text("+")),
              ElevatedButton(onPressed: _sub, child: Text("-")),
              ElevatedButton(onPressed: _mul, child: Text("*")),
              ElevatedButton(onPressed: _div, child: Text("div")),
              ElevatedButton(onPressed: _mod, child: Text("mod")),
            ],
          ),
        ));
  }
}
