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
  var Rich;
  void _Rich(){

      if (Money<= 2000){
        Rich = "poor";
      }else{
        Rich = "Rich";
      }
  }
  void _Rain(){
    setState(() {
      Money=Money+100;
      _Rich();
    });
  }
  void _Reset(){
    setState(() {
      Money=0;
      _Rich();
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
             child: new Text("$Rich",
                style: new TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                ),),
            ),

            new Expanded(child:new Center(
              child: new Text('\$$Money',
                style: new TextStyle(
                  color:  Money < 2000 ? Colors.greenAccent : Money < 3000 ? Colors.blue : Colors.black ,
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