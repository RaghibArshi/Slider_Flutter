import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen

  ({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int slideValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EAFF),
      appBar: AppBar(
        title: Text('Slider'),
        centerTitle: true,
        backgroundColor: Color(0xFFD0A2F7),
      ),
      body: Center(
          child: Text(
            slideValue.toString(),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 60),
          ),
        ),
      bottomNavigationBar: _buildControlWidgets(),
    );
  }

  Widget _buildControlWidgets() {
    return Container(
      color: Color(0xFFD0A2F7),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: Text('Sliding: $slideValue'),
            titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Slider(
            activeColor: Color(0xFFF1EAFF),
            inactiveColor: Colors.grey,
            divisions: 100,
            max: 1000,
            onChanged: (double val) {
              setState(() {
                slideValue = val.toInt();
              });
            },
            value: slideValue.toDouble(),
            label: slideValue.toString(),
          ),
        ],
      ),
    );
  }
}
