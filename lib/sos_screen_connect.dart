import 'package:flutter/material.dart';

class EmergencySOSScreenConnect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Emergency SOS',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                //add here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'End',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Conteúdo do corpo aqui
            ],
          ),
        ),
      ),
    );
  }
}
