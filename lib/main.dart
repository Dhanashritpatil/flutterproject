import 'package:flutter/material.dart';
import 'package:Church_Konnect/screen/auth_screen.dart';
import 'screen/notification.dart';
import 'screen/event.dart';
import 'screen/paster.dart';
import 'screen/prayer_request.dart';
import 'screen/home.dart';
import 'screen/church_locator.dart';
import 'screen/receipt.dart';
import 'screen/donation.dart';
import 'screen/kids_corner.dart';
import 'screen/refer_earn.dart';
import 'screen/songs_book.dart';
import 'screen/church.dart';
import 'screen/songs.dart';
import 'screen/holy_bible.dart';
import 'screen/daily_manna.dart';
import 'screen/video.dart';
import 'screen/main_scafold.dart';
import 'screen/user.dart';

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
        '/events': (context) => EventsPage(),
        '/paster': (context) => AddChurchScreen(),
        '/prayer': (context) => PrayerRequestScreen(),
        '/charch': (context) => ChurchLocatorScreen(),
        '/recpite': (context) => const ReceiptScreen(),
        '/donation': (context) => DonatePage(),
        '/kidscorner': (context) => KidsCornerScreen(),
        '/referrs': (context) => ReferAndEarnScreen(),
        '/songbook': (context) => SongBookScreen(),
        '/church': (context) => ChurchDetailsScreen(),
        '/songs': (context) => SongsScreen(),
        '/holybible': (context) => HolyBibleScreen(),
        '/dailymanna': (context) => DailyMannaScreen(),
        '/videos': (context) => VideosPage(),
        '/mainscafold': (context) => MainScaffold(),
        '/receipt': (context) => ReceiptScreen(),
        '/user': (context) => ProfileScreen()
      },
    );
  }
}
