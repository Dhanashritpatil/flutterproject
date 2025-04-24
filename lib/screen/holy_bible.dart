// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class HolyBibleScreen extends StatefulWidget {
//   @override
//   _HolyBibleScreenState createState() => _HolyBibleScreenState();
// }

// class _HolyBibleScreenState extends State<HolyBibleScreen> {
//   int _selectedIndex = 0;

//   final List<Map<String, String>> languages = [
//     {'name': 'English', 'image': 'lib/assets/images/english.jpeg'},
//     {'name': 'Hindi', 'image': 'lib/assets/images/hindi.jpeg'},
//     {'name': 'Marathi', 'image': 'lib/assets/images/marathi.jpeg'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Holy Bible"),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0,
//         leading: Icon(Icons.arrow_back, color: Colors.black),
//         actions: [
//           PopupMenuButton<String>(
//             icon: Icon(Icons.more_vert, color: Colors.black),
//             onSelected: (value) {
//               print("Selected: $value");
//             },
//             itemBuilder: (BuildContext context) {
//               return ['1', '2', '3'].map((String choice) {
//                 return PopupMenuItem<String>(
//                   value: choice,
//                   child: Text(choice),
//                 );
//               }).toList();
//             },
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
//         itemCount: languages.length,
//         itemBuilder: (context, index) {
//           return _buildLanguageCard(
//             name: languages[index]['name']!,
//             imagePath: languages[index]['image']!,
//           );
//         },
//       ),bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.black54,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: Padding(
//               padding: const EdgeInsets.only(top: 6.0),
//               child: SvgPicture.asset(
//                 'lib/assets/icons/home_icon.svg',
//                 width: 20,
//                 height: 20,
//                 color: Colors.black,
//               ),
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Padding(
//               padding: const EdgeInsets.only(top: 6.0),
//               child: SvgPicture.asset(
//                 'lib/assets/icons/favorite_icon.svg',
//                 width: 20,
//                 height: 20,
//                 color: Colors.black,
//               ),
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Padding(
//               padding: const EdgeInsets.only(top: 6.0),
//               child: SvgPicture.asset(
//                 'lib/assets/icons/hallow_notification.svg',
//                 width: 20,
//                 height: 20,
//                 color: Colors.black,
//               ),
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Padding(
//               padding: const EdgeInsets.only(top: 6.0),
//               child: SvgPicture.asset(
//                 'lib/assets/icons/user_icon.svg',
//                 width: 20,
//                 height: 20,
//                 color: Colors.black,
//               ),
//             ),
//             label: '',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildLanguageCard({required String name, required String imagePath}) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(12),
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             Image.asset(
//               imagePath,
//               height: 150,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//             Container(
//               height: 150,
//               color: Colors.black.withOpacity(0.4),
//               alignment: Alignment.center,
//               child: Text(
//                 name,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart'; // Add shimmer package to pubspec.yaml

class HolyBibleScreen extends StatefulWidget {
  @override
  _HolyBibleScreenState createState() => _HolyBibleScreenState();
}

class _HolyBibleScreenState extends State<HolyBibleScreen> {
  int _selectedIndex = 0;
  bool _isLoading = true;

  final List<Map<String, String>> languages = [
    {'name': 'English', 'image': 'lib/assets/images/english.jpeg'},
    {'name': 'Hindi', 'image': 'lib/assets/images/hindi.jpeg'},
    {'name': 'Marathi', 'image': 'lib/assets/images/marathi.jpeg'},
  ];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate a network call
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Holy Bible"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onSelected: (value) {
              print("Selected: $value");
            },
            itemBuilder: (BuildContext context) {
              return ['1', '2', '3'].map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: _isLoading ? _buildSkeletonLoader() : _buildContent(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildSkeletonLoader() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      itemCount: languages.length,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 150,
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
      },
    );
  }

  Widget _buildContent() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      itemCount: languages.length,
      itemBuilder: (context, index) {
        return _buildLanguageCard(
          name: languages[index]['name']!,
          imagePath: languages[index]['image']!,
        );
      },
    );
  }

  Widget _buildLanguageCard({required String name, required String imagePath}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              height: 150,
              color: Colors.black.withOpacity(0.4),
              alignment: Alignment.center,
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
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
    );
  }
}

