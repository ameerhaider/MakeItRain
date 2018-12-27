import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItRainState();
  }


}
class MakeItRainState extends State<MakeItRain>{


  var Money = 0;
  void _Rain(){
    setState(() {
      Money=Money+100;
    });
  }
  void _Reset(){
    setState(() {
      Money=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain",
        style: new TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w800,
        ),),
        backgroundColor: Colors.red,

      ),
      body: new Container(
        child:  new Column(
          children: <Widget>[
            //tital

            new Center(
             child: new Text("Get Rich!",
                style: new TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                ),),
            ),
            new Expanded(child:new Center(
              child: new Text('\$$Money',
                style: new TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                ),),

            ),
            ),
            new Expanded(child: new Center(
              child: new FlatButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: _Rain,
                  child: new Text("Let It Rain ",
                 style: new TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w900,
                 ), )),
            )),
            new Expanded(child: new Center(
              child: new FlatButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: _Reset,
                  child: new Text("Reset ",
                    style: new TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ), )),
            )),
          ],
        ),
      ),
    );
  }

}