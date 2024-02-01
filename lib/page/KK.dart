// kk.dart
import 'package:flutter/material.dart';

class KKPage extends StatelessWidget {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('นัดหมาย'),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Center(
          child: Card(
            margin: const EdgeInsets.all(16.0),
            elevation: 4.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 234, 245),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        '📅แจ้งนัดหมาย',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        controller: textController1,
                        decoration: InputDecoration(labelText: 'ชื่อ', hintText: 'กรุณากรอกชื่อ'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        controller: textController2,
                        decoration: InputDecoration(labelText: 'รายละเอียด', hintText: 'กรุณากรอกรายละเอียด'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle submit button press
                          },
                          child: Text('นัดหมาย'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Handle cancel button press
                          },
                          child: Text('ยกเลิก'),
                        ),
                        SizedBox(height: 16.0), // เพิ่มช่องว่างด้านล่าง
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
