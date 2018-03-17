import 'package:flutter/material.dart';

void main() => runApp(new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new CustomText('Android Pakistan Community'),
        new Padding(
          padding: new EdgeInsets.only(bottom: 20.0),
        ),
        new CustomText('devncode'),
        new Counter(),
        new Padding(
          padding: new EdgeInsets.only(bottom: 20.0),
        ),
      ],
    ));

class CustomText extends StatelessWidget {
  String text;
  CustomText(this.text);

  @override
  build(BuildContext context) {
    return new Center(
      child: new Text(
        text,
        textDirection: TextDirection.ltr,
        style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  createState() => new CounterState();
}

class CounterState extends State<Counter> {
  int _counter = 1;
  void increment() {
    this.setState(() {
      _counter++;
    });
  }

  @override
  build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new CustomText(_counter.toString()),
        new GestureDetector(
          onTap: () => increment(),
          child: new CustomText('Increment'),
        )
      ],
    );
  }
}
