import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/auth_screen.dart';
import 'screen/notification_screen.dart';
import 'screen/event_screen.dart';
import 'screen/paster_screen.dart';
import 'screen/prayer_request.dart';
import 'screen/home_screen.dart';
import 'screen/church_locatoe.dart';
import 'screen/recpite.dart';
import 'screen/Donation.dart';
import 'screen/kids_corner.dart';
import 'screen/refer&earn.dart';
import 'screen/songs_book.dart';
import 'screen/church.dart';
import 'screen/songs.dart';
import 'screen/holy_bible.dart';
import 'screen/daily_mana_screen.dart';
import 'screen/video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Church Connect',
      theme: ThemeData(



        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: const Color(0xFFF9F8F8),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthScreen(),
        '/home': (context) => HomePage(),
        '/notifications': (context) => const NotificationScreen(),
        '/events': (context) => const EventsScreen(),
        '/paster': (context) => const AddChurchPage(),
        '/prayer': (context) => const PrayerRequestPage(),
        '/charch': (context) => const ChurchLocatorScreens(),
        '/recpite': (context) => const ReceiptScreen(),
        '/donation': (context) => DonationsScreen(),
        '/kidscorner': (context) => KidsCornerScreen(),
        '/referrs': (context) => const ReferAndEarnScreen(),
        '/songbook ': (context) => const SongBookScreen(),
        '/church': (context) => const ChurchDetailPage(),
        '/songs': (context) => const SongsPage(),
        '/holybible': (context) => LanguageSelectionScreen(),
        '/dailymanna': (context) => DailyMannaScreen(),
        '/videos' : (context) => VideosPage()
      },
    );
  }
}
