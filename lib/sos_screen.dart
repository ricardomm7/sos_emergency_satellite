import 'package:flutter/material.dart';
import 'package:sos_emergency_satellite/sos_screen_connect.dart';

class EmergencySOSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image1.jpg',
                  width: 300,
                ),
                SizedBox(height: 20),
                Text(
                  'Emergency SOS via Satellite',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  '• Be outside to get a connection.\n• Messages will take longer to send.\n• Answer questions to help get a faster response.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
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
            Text(
              'Your location and medical ID may be shared.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmergencySOSScreenConnect(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff34C759),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
              child: Container(
                width: double.infinity,
                height: 60,
                child: Center(
                  child: Text(
                    'Report Emergency',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
