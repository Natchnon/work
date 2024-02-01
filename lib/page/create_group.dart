import 'package:flutter/material.dart';

class CreateGroupPage extends StatelessWidget {
  final TextEditingController groupNameController = TextEditingController();
  final TextEditingController groupDescriptionController = TextEditingController();
  final TextEditingController creatorController = TextEditingController();
  final TextEditingController dateTimeController = TextEditingController(); // เพิ่ม controller สำหรับวันที่และเวลา

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('สร้างกลุ่ม'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                const Center(
                  child: Text(
                    '👬สร้างกลุ่ม',
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: groupNameController,
                  decoration: const InputDecoration(
                    labelText: 'ชื่อกลุ่ม',
                    hintText: '***กรุณากรอกข้อมูลลงในช่องนี้ให้ครบ***',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: groupDescriptionController,
                  decoration: const InputDecoration(
                    labelText: 'รายละเอียดกลุ่ม',
                    hintText: '***กรุณากรอกข้อมูลลงในช่องนี้ให้ครบ***',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: creatorController,
                  decoration: const InputDecoration(
                    labelText: 'ผู้สร้าง',
                    hintText: '***กรุณากรอกข้อมูลลงในช่องนี้ให้ครบ***',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: dateTimeController,
                  decoration: const InputDecoration(
                    labelText: 'วันที่และเวลา',
                    hintText: '***กรุณากรอกข้อมูลลงในช่องนี้ให้ครบ***',
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    'กำหนดสมาชิกในกลุ่ม',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
