import 'package:flutter/material.dart';

void main() {
  runApp(const LunaStackApp());
}

class LunaStackApp extends StatelessWidget {
  const LunaStackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Luna Stack 🌙',
     
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFFFFF9FB), 
        useMaterial3: true,
      ),
      home: const LunaHomeScreen(),
    );
  }
}


class LunaHomeScreen extends StatelessWidget {
  const LunaHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Luna Home 🌙', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.pink[300],
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            const Icon(Icons.nightlight_round, size: 100, color: Colors.pinkAccent),
            const SizedBox(height: 30),
            const Text(
              "Welcome to Luna World!",
              style: TextStyle(fontSize: 22, color: Colors.pink, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 40),
            // زر الانتقال (Push)
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[300],
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LunaDetailScreen()),
                );
              },
              icon: const Icon(Icons.auto_awesome, color: Colors.white),
              label: const Text("View Magic Details ✨", style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

// شاشة التفاصيل - Luna Details
class LunaDetailScreen extends StatelessWidget {
  const LunaDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Luna Details 🎀'),
        backgroundColor: Colors.pink[200],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.favorite, size: 80, color: Colors.pinkAccent),
            const SizedBox(height: 20),
            const Text(
              "You've reached the Details!\nThis is the Top of the Stack.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.pink),
            ),
            const SizedBox(height: 40),
            // زر العودة (Pop)
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.pinkAccent),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {
                // Stack Navigation: إزالة الشاشة الحالية والرجوع للخلف
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.pinkAccent),
              label: const Text("Go Back Home", style: TextStyle(color: Colors.pinkAccent, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}