// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:cecom_flutter/first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {



    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Sans',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),

          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    return MaterialApp(
      title: 'CECOM Flutter Sans',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurple,
          title: const Text('CECOM Flutter layout Sans'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'image/sans.jpg',
              width:600,
              height:440,
              fit: BoxFit.cover,
            ),
            titleSection,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,'package:cecom_flutter/first.dart');
                      },
                      child: Text('sans1'),
                      style:ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                        overlayColor: MaterialStateProperty.all(Colors.black),
                      )
                  ),
                ),
                ElevatedButton(
                    onPressed: () {print('샌즈!!');},
                    child: Text('sans2'),
                    style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                      overlayColor: MaterialStateProperty.all(Colors.black),
                    )
                ),
                ElevatedButton(
                    onPressed: () {print('아시는구나!');},
                    child: Text('sans3'),
                    style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                      overlayColor: MaterialStateProperty.all(Colors.black),
                    )
                ),
                ElevatedButton(
                    onPressed: () {print('이.거겁.나.어.렵.습.니.다');},
                    child: Text('sans4'),
                    style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                      overlayColor: MaterialStateProperty.all(Colors.black),
                    )
                )
              ]
            ),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color,IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top:8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}





