import 'package:flutter/material.dart';
import 'package:tugas1/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catatan Keuangan',
            style: TextStyle(fontFamily: 'Poppins')),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Implementasi logika untuk menambah catatan keuangan
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Pemasukan:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Masukkan jumlah pemasukan',
                  hintStyle: TextStyle(fontFamily: 'Poppins')),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Pengeluaran:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Masukkan jumlah pengeluaran',
                  hintStyle: TextStyle(fontFamily: 'Poppins')),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika untuk menyimpan catatan keuangan
              },
              child: const Text(
                'Simpan',
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        selectedItemColor: Colors.pink[100],
        selectedLabelStyle:
            const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Poppins'),
        onTap: (int index) {
          if (index == 2) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const MyApp()),
              (route) => false,
            );
          }
        },
      ),
    );
  }
}
