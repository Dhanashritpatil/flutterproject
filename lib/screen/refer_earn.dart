import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification.dart';
import 'home.dart';
import 'user.dart';

class ReferAndEarnScreen extends StatefulWidget {
  @override
  _ReferAndEarnScreenState createState() => _ReferAndEarnScreenState();
}

class _ReferAndEarnScreenState extends State<ReferAndEarnScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refer And Earn'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onSelected: (value) {
              print("Option selected: $value");
            },
            itemBuilder: (context) {
              return ['1', '2', '3'].map((option) {
                return PopupMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Invite friends to church app & get rewards\nwhen your friends register to the app. They\nget reward too...',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/assets/images/women.png'),
                //Icon(Icons.account_circle, size: 48),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Pratiksha", style: TextStyle(fontSize: 16)),
                    Text("P2121", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadowColor: Colors.deepPurpleAccent,
                    elevation: 6,
                  ),
                  onPressed: () {},
                  child: Text('Share'),
                ),
              ],
            ),
            SizedBox(height: 305),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.email, size: 32, color: Colors.red),
                Icon(Icons.message, size: 32, color: Colors.green),
                SvgPicture.asset(
                  'lib/assets/icons/insta_icon.svg',
                  width: 32,
                  height: 32,
                ),
                SvgPicture.asset(
                  'lib/assets/icons/whatsapp_icon.svg',
                  width: 32,
                  height: 32,
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 64),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                foregroundColor:
                    Colors.white, // This sets the text color to white
              ),
              onPressed: () {},
              child: Text('SHARE'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index == 2) {
            // Open Notification screen when bell is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NotificationScreen()),
            );
          }
          // Optionally handle other indices (Home, Favorites, Profile)
          else if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileCard()),
            );
          }
        },
  selectedItemColor: Colors.black,
  unselectedItemColor: Colors.black54,
  showSelectedLabels: false,
  showUnselectedLabels: false,
  type: BottomNavigationBarType.fixed,
  items: [
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: SvgPicture.asset(
          'lib/assets/icons/home_icon.svg',
          width: 20,
          height: 20,
          color: Colors.black,
        ),
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: SvgPicture.asset(
          'lib/assets/icons/favorite_icon.svg',
          width: 20,
          height: 20,
          color: Colors.black,
        ),
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: SvgPicture.asset(
          'lib/assets/icons/hallow_notification.svg',
          width: 20,
          height: 20,
          color: Colors.black,
        ),
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: SvgPicture.asset(
          'lib/assets/icons/user_icon.svg',
          width: 20,
          height: 20,
          color: Colors.black,
        ),
      ),
      label: '',
    ),
  ],
),

    );
  }
}
