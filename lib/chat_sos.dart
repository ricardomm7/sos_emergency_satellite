import 'package:flutter/material.dart';
import 'package:sos_emergency_satellite/sos_screen.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Emergency Chat',
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
      backgroundColor: Colors.black, // Cor de fundo do chat
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ChatMessage(isSentByMe: true, message: 'Emergency request!!\n\n123 Main Street,\nFictional City,\nImaginary Country.\n\nHealth ID: 8479392309824534535'),
                ChatMessage(isSentByMe: false, message: 'Hello, we have received your emergency contact. Your location is\n\n123 Main Street,\nFictional City,\nImaginary Country.\n\nWe are mobilising assistance and will send help as soon as possible. Please stay safe and wait for further instructions. Your safety is our priority. Thank you for contacting us.'),
                // Adicione mais mensagens de chat conforme necessário
              ],
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final bool isSentByMe;
  final String message;

  ChatMessage({required this.isSentByMe, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSentByMe ? Color(0xFF0C3015) : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          message,
          style: TextStyle(
            fontSize: 16,
            color: isSentByMe ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class ChatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.black,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40, // Altura fixa da caixa de texto
              child: TextField(
                style: TextStyle(color: Colors.white),
                textAlignVertical: TextAlignVertical.bottom,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: 'Type a quick message...',
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Color(0xff34C759)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Color(0xFF0C3015)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              // Enviar mensagem (implemente a lógica aqui)
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF0C3015),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Icon(Icons.arrow_upward_rounded, color: Color(0xff34C759)),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChatScreen(),
  ));
}
