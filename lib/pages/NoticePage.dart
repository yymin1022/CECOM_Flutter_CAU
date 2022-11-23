//신지연님 page
import "package:flutter/material.dart";

class NoticePage extends StatelessWidget {
  Color _color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text("CECOM Flutter APP"),
        ),
        body: Container(
            padding : const EdgeInsets.all(10.0),
            child : Column(
                children: <Widget>[
                  ButtonBar(
                      mainAxisSize : MainAxisSize.max,
                      alignment : MainAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                          onPressed: (){
                            print('clicked');
                          },
                          child : Text(' 학사 ', style: TextStyle(fontSize : 15.0)
                          ),
                          style : TextButton.styleFrom(
                            primary:Colors.white,
                            backgroundColor : Colors.deepPurple,
                            minimumSize: Size(100, 20),
                            //padding: EdgeInsets.all(5),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            print('clicked');
                          },
                          child : Text('학점교류', style: TextStyle(fontSize : 15.0)
                          ),
                          style : TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor : Colors.deepPurple,
                              minimumSize: Size(100, 20),
                          )

                        ),
                        TextButton(
                          onPressed: (){
                            print('clicked');
                          },
                          child : Text(' 모집 ', style: TextStyle(fontSize : 15.0)
                          ),
                          style : TextButton.styleFrom(
                              primary:Colors.white,
                              backgroundColor : Colors.deepPurple,
                              minimumSize: Size(100, 20)),

                        ),
                      ]
                  ),
                  ButtonBar(
                      mainAxisSize : MainAxisSize.max,
                      alignment : MainAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                          onPressed: (){
                            print('clicked');
                          },
                          child : Text(' 장학 ', style: TextStyle(fontSize : 15.0)
                          ),
                          style : TextButton.styleFrom(
                              primary:Colors.white,
                              backgroundColor : Colors.deepPurple,
                              minimumSize: Size(100, 20),),
                        ),
                        TextButton(
                          onPressed: (){
                            print('clicked');
                          },
                          child : Text(' 행사 ', style: TextStyle(fontSize : 15.0)
                          ),
                          style : TextButton.styleFrom(
                              primary:Colors.white,
                              backgroundColor : Colors.deepPurple,
                            minimumSize: Size(100, 20),),
                        ),
                        TextButton(
                          onPressed: (){
                            print('clicked');
                          },
                          child : Text(' 일반 ', style: TextStyle(fontSize : 15.0)
                          ),
                          style : TextButton.styleFrom(
                              primary:Colors.white,
                              backgroundColor : Colors.deepPurple,
                            minimumSize: Size(100, 20),),
                        ),
                      ]
                  ),
                  Container(
                    color: Colors.black12,
                    width: 300,
                    height: 700,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),

                ],


            ),

        ),

    );
  }

}
