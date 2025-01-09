import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Barbearia Aruana"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          i = i + 1;
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Text(
            i.toString(),
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
      ),
    );
  }
}
