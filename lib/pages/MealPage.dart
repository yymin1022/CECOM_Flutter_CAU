//박상우님 page
import "package:flutter/material.dart";

class MealPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("CECOM Flutter APP"),
      ),
      body: Container(
        child: Text("Meal Page"),
      ),
    );
  }
}
