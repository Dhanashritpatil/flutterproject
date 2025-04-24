import 'package:flutter/material.dart';
import 'notification.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  final List<_GridItem> gridItems = [
    _GridItem("Church Locator", Icons.location_on, '/charch'),
    _GridItem("Holy Bible Access", Icons.menu_book, '/holybible'),
    _GridItem("Daily Manna", Icons.book, '/dailymanna'),
    _GridItem("Prayer Requests", Icons.message, '/prayer'),
    _GridItem("Songs Book", Icons.library_music, '/songbook '),
    _GridItem("Videos", Icons.video_library, '/videos'),
    _GridItem("Refer and Earn", Icons.card_giftcard, '/referrs'),
    _GridItem("Donate", Icons.volunteer_activism, '/donation'),
    _GridItem("Christian Matrimony", Icons.favorite, '/matrimony'),
    _GridItem("Event", Icons.favorite, '/events'),
    _GridItem("Christian Shopping", Icons.shopping_cart, '/shopping'),
    _GridItem("Bible School", Icons.school, '/bibleSchool'),
    _GridItem("Bible Quiz", Icons.quiz, '/bibleQuiz'),
    _GridItem("Ask Bible TH", Icons.chat, '/askBibleTH'),
    _GridItem("Kid’s Corner", Icons.child_care, '/kidscorner'),
    _GridItem("Songs", Icons.music_note, '/songs'),
    _GridItem("church", Icons.music_note, '/church'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praise The Lord..."),
        actions: [
          IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.deepOrange,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => NotificationScreen()),
                );
              })
        ],
        leading: IconButton(
            icon: Icon(Icons.person),
            color: Colors.deepOrange,
            onPressed: () {}),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              _buildRaiseHandBanner(context),
              const SizedBox(height: 12),
              GridView.builder(
                itemCount: gridItems.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  final item = gridItems[index];
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, item.route),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(item.icon, size: 24, color: Colors.deepOrange),
                          const SizedBox(height: 6),
                          Text(
                            item.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              _buildBottomButtons(),
            ],
          ),
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
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

  Widget _buildRaiseHandBanner(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        children: [
          Text(
            "Raise Hand For Church...",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            "Get the churches connected more\nBring the awareness of online services",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 11),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.arrow_back_ios, size: 16),
              Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButtons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange ),
                child: Text("Logout")),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange ),
                child: Text("Contact Us")),
          ],
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange ),
          child: Text("Terms and Conditions"),
        ),
      ],
    );
  }
}

class _GridItem {
  final String title;
  final IconData icon;
  final String route;

  _GridItem(this.title, this.icon, this.route);
}
