//박지우님page
import "package:flutter/material.dart";

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget TopSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children:[
                      Icon(
                        Icons.star,
                        color: Colors.deepPurple[500],
                    ),
                      Text("Monthly Schedule Page",
                        style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(width: 500,
                    child: Divider(color: Colors.deepPurple, thickness: 2.0))
              ],
            ),
          ),
        ],
      ),
    );

    Widget BottomSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children:[
                      Icon(
                        Icons.star,
                        color: Colors.deepPurple[500],
                      ),
                      Text("Academic Conference",
                        style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(width: 500,
                    child: Divider(color: Colors.deepPurple, thickness: 2.0))
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("CECOM Flutter APP"),
      ),
      body: Container(
        child: Column(
          children: [TopSection, BottomSection],
        ),
      ),
    );
  }
}
