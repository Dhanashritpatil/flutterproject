import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Church Connect',
      theme: ThemeData(primarySwatch: Colors.orange, useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Church Connect',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            HomeGridItem(
              title: 'Church Locator',
              imagePath: 'assets/church.png',
              onTap: () => navigateTo(context, const ChurchLocatorScreen()),
            ),
            HomeGridItem(
              title: 'Daily Manna',
              imagePath: 'assets/manna.png',
              onTap: () => navigateTo(context, const DailyMannaScreen()),
            ),
            HomeGridItem(
              title: 'Songs Book',
              imagePath: 'assets/songs.png',
              onTap: () => navigateTo(context, const SongsBookScreen()),
            ),
            HomeGridItem(
              title: 'Events',
              imagePath: 'assets/events.png',
              onTap: () => navigateTo(context, const EventsScreen()),
            ),
            HomeGridItem(
              title: 'Notifications',
              imagePath: 'assets/notifications.png',
              onTap: () => navigateTo(context, const NotificationsScreen()),
            ),
            HomeGridItem(
              title: 'About Us',
              imagePath: 'assets/about.png',
              onTap: () => navigateTo(context, const AboutUsScreen()),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeGridItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const HomeGridItem({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange.shade50,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.orange.shade100,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 60,
              height: 60,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Dummy Screens (replace with your actual page widgets)
class ChurchLocatorScreen extends StatelessWidget {
  const ChurchLocatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Church Locator')),
      body: Center(child: Text('Church Locator Page')),
    );
  }
}

class DailyMannaScreen extends StatelessWidget {
  const DailyMannaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Daily Manna')),
      body: Center(child: Text('Daily Manna Page')),
    );
  }
}

class SongsBookScreen extends StatelessWidget {
  const SongsBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Songs Book')),
      body: Center(child: Text('Songs Book Page')),
      
    );
  }
}

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Events')),
      body: Center(child: Text('Events_screen')),
    );
  }
}

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: Center(child: Text('Notifications Page')),
    );
  }
}

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('About Us')),
      body: Center(child: Text('About Us Page')),
    );
  }
}
