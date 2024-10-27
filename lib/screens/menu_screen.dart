import 'package:flutter/material.dart';
import 'package:halaman_login/widgets/custom_scaffold.dart';

class MenuScreen extends StatelessWidget {
  final String email; // Menyimpan email yang diterima

  const MenuScreen({super.key, required this.email}); // Mengharuskan email

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Container(
        width: 330,
        height: 600,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(228, 255, 255, 255),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            // Foto Profil
           ClipOval(
                      child: Image.asset(
                        'assets/images/zikuriari.png', // Ganti dengan path gambar aset Anda
                        width: 160, // Lebar dari CircleAvatar
                        height: 160, // Tinggi dari CircleAvatar
                        fit: BoxFit.cover, // Menyesuaikan gambar untuk menutupi area
                      ),
                    ),

            const SizedBox(height: 16),
            // Nama Pengguna
            const Text(
              'Welcome to US', // Ganti dengan nama pengguna
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Email Pengguna
            Text(
              'Logged in as: $email', // Menampilkan email
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 225, 0, 255),
              ),
            ),
            const SizedBox(height: 20),
            // Daftar Pengaturan
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: const Text('Edit Profile'),
                    leading: const Icon(Icons.edit),
                    onTap: () {
                  
                    },
                  ),
                  ListTile(
                    title: const Text('Change Password'),
                    leading: const Icon(Icons.lock),
                    onTap: () {
                  
                    },
                  ),
                  ListTile(
                    title: const Text('Notifications'),
                    leading: const Icon(Icons.notifications),
                    onTap: () {
               
                    },
                  ),
                  ListTile(
                    title: const Text('Privacy Settings'),
                    leading: const Icon(Icons.privacy_tip),
                    onTap: () {
               
                    },
                  ),
                  ListTile(
                    title: const Text('Logout'),
                    leading: const Icon(Icons.logout),
                    onTap: () {
                  
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
