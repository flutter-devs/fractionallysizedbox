import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text('Fractionally Sized Box'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 200,
            width: 300,
            color: Colors.indigo,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child:
                    _buildTextWidget(text: "Demo Project", color: Colors.white),
              ),
            ),
          ),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 1,
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                        child: FractionallySizedBox(
                      widthFactor: 0.08,
                      child: _buildTextWidget(
                          text: 'Fractional', color: Colors.deepOrangeAccent),
                    )),
                    Flexible(
                        child: FractionallySizedBox(
                      widthFactor: 0.05,
                      child: _buildTextWidget(
                          text: 'Sized', color: Colors.indigoAccent),
                    )),
                    Flexible(
                        child: FractionallySizedBox(
                      widthFactor: 0.05,
                      child: _buildTextWidget(text: 'Box', color: Colors.black),
                    )),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 220,
            width: double.infinity,
            color: Colors.yellowAccent,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: FractionallySizedBox(
                      heightFactor: 1,
                      widthFactor: 1,
                      child: Container(color: Colors.orange),
                    ),
                  ),
                  Flexible(
                    child: FractionallySizedBox(
                        heightFactor: 0.7,
                        widthFactor: 0.7,
                        child: Container(color: Colors.green)),
                  ),
                  Flexible(
                    child: FractionallySizedBox(
                        heightFactor: 0.4,
                        widthFactor: 0.4,
                        child: Container(color: Colors.blue)),
                  ),
                ]),
          ),
          Container(
            height: 100,
            width: 180,
            color: Colors.purpleAccent,
            child: FractionallySizedBox(
              heightFactor: 0.6,
              widthFactor: 0.5,
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                color: Colors.white,
                child: _buildTextWidget(text: 'Click', color: Colors.red),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildTextWidget({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
