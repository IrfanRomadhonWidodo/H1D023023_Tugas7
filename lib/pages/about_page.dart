import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Aplikasi')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            // App Logo
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Icon(
                Icons.flutter_dash,
                color: Colors.white,
                size: 80,
              ),
            ),
            const SizedBox(height: 24),
            // App Name
            Text(
              'Creative Orange App',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: const Color(0xFFE65100),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // App Version
            Text(
              'Versi 1.0.0',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600),
            ),
            const SizedBox(height: 32),
            // Description Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tentang Aplikasi Ini',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color(0xFFE65100),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Creative Orange App adalah aplikasi demo yang dibuat dengan Flutter untuk menunjukkan implementasi fitur-fitur seperti autentikasi pengguna, navigasi dengan routes, side menu, dan penyimpanan data lokal menggunakan shared preferences.',
                    style: TextStyle(height: 1.5),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Aplikasi ini dirancang dengan tema orange yang menarik dan antarmuka yang intuitif untuk memberikan pengalaman pengguna yang menyenangkan.',
                    style: TextStyle(height: 1.5),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Features Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fitur Utama',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color(0xFFE65100),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureItem(
                    Icons.login,
                    'Halaman Login dengan validasi',
                  ),
                  const SizedBox(height: 12),
                  _buildFeatureItem(
                    Icons.storage,
                    'Local Storage dengan shared_preferences',
                  ),
                  const SizedBox(height: 12),
                  _buildFeatureItem(Icons.menu, 'Side Menu untuk navigasi'),
                  const SizedBox(height: 12),
                  _buildFeatureItem(
                    Icons.alt_route,
                    'Routes untuk navigasi antar halaman',
                  ),
                  const SizedBox(height: 12),
                  _buildFeatureItem(Icons.person, 'Halaman Profil pengguna'),
                  const SizedBox(height: 12),
                  _buildFeatureItem(
                    Icons.settings,
                    'Halaman Pengaturan aplikasi',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Developer Info
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Developer',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color(0xFFE65100),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.code, color: Color(0xFFFF9800)),
                      const SizedBox(width: 8),
                      const Text(
                        'Dikembangkan dengan Flutter',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.person, color: Color(0xFFFF9800)),
                      const SizedBox(width: 8),
                      const Text(
                        'Oleh: Tim Developer Kreatif',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.email, color: Color(0xFFFF9800)),
                      const SizedBox(width: 8),
                      const Text(
                        'Email: dev@orangeapp.com',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: const Color(0xFFFF9800), size: 20),
        const SizedBox(width: 12),
        Expanded(child: Text(text, style: const TextStyle(height: 1.4))),
      ],
    );
  }
}
