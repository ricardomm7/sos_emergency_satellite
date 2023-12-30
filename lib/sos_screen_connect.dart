import 'package:flutter/material.dart';
import 'package:sos_emergency_satellite/sos_screen.dart';


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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmergencySOSScreen(),
                  ),
                );
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
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/f9efe05b89f34c6196810ca6237d2d44.png',
                  width: 300,
                ),
                SizedBox(height: 35),
                Text(
                  'CONNECTED',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF5CF76C),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Keep Pointing at \nSatellite',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                 SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(25, 1, 25, 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                //do
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF0C3015),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
              child: Container(
                width: double.infinity,
                height: 60,
                child: Center(
                  child: Text(
                    'Open Emergency Options',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff34C759),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
