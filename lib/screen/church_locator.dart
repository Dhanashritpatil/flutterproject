// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class ChurchLocatorScreen extends StatefulWidget {
//   @override
//   _ChurchLocatorScreenState createState() => _ChurchLocatorScreenState();
// }

// class _ChurchLocatorScreenState extends State<ChurchLocatorScreen> {
//   int _selectedIndex = 0;

//   final List<Map<String, String>> churches = [
//     {
//       'name': 'Good Shepherd Evangelical Church',
//       'location': 'Serilingampalle, HYD, 500019',
//       'image': 'lib/assets/images/good_shepherd.jpg',
//       'rating': '3.7',
//     },
//     {
//       'name': 'Christ Gospel Church',
//       'location': 'Gulmohar Park, HYD, 500041',
//       'image': 'lib/assets/images/christ.jpg',
//       'rating': '3.7',
//     },
//     {
//       'name': 'Another Church',
//       'location': 'Somewhere, HYD',
//       'image': 'assets/church3.jpg',
//       'rating': '4.5',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Church Locator"),
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
//       body: ListView(
//         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         children: [
//           _buildSearchBar(),
//           SizedBox(height: 10),
//           ...churches.map((church) => _buildChurchCard(church)).toList(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
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

//   Widget _buildSearchBar() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(30),
//         boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black12)],
//       ),
//       child: Row(
//         children: [
//           Icon(Icons.search, color: Colors.deepOrange),
//           SizedBox(width: 10),
//           Expanded(
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: "Search...",
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//           Icon(Icons.filter_list, color: Colors.grey),
//           SizedBox(width: 10),
//           Icon(Icons.sort, color: Colors.grey),
//         ],
//       ),
//     );
//   }

//   Widget _buildChurchCard(Map<String, String> church) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black12)],
//       ),
//       child: Column(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
//             child: Stack(
//               children: [
//                 Image.asset(
//                   church['image']!,
//                   height: 160,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//                 Positioned(
//                   top: 8,
//                   right: 8,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.white,
//                     child: Icon(Icons.bookmark_border, color: Colors.orange),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 8,
//                   right: 8,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.star, color: Colors.orange, size: 16),
//                         SizedBox(width: 4),
//                         Text(church['rating']!,
//                             style: TextStyle(fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           ListTile(
//             title: Text(church['name']!,
//                 style: TextStyle(fontWeight: FontWeight.bold)),
//             subtitle: Row(
//               children: [
//                 Icon(Icons.location_on, color: Colors.orange, size: 16),
//                 SizedBox(width: 4),
//                 Flexible(child: Text(church['location']!)),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'notification.dart';
import 'home.dart';
import 'user.dart';

class ChurchLocatorScreen extends StatefulWidget {
  @override
  _ChurchLocatorScreenState createState() => _ChurchLocatorScreenState();
}

class _ChurchLocatorScreenState extends State<ChurchLocatorScreen> {
  int _selectedIndex = 0;
  bool isLoading = true;

  final List<Map<String, String>> churches = [
    {
      'name': 'Good Shepherd Evangelical Church',
      'location': 'Serilingampalle, HYD, 500019',
      'image': 'lib/assets/images/good_shepherd.jpg',
      'rating': '3.7',
    },
    {
      'name': 'Christ Gospel Church',
      'location': 'Gulmohar Park, HYD, 500041',
      'image': 'lib/assets/images/christ.jpg',
      'rating': '3.7',
    },
    {
      'name': 'Another Church',
      'location': 'Somewhere, HYD',
      'image': 'assets/church3.jpg',
      'rating': '4.5',
    },
  ];

  @override
  void initState() {
    super.initState();
    // Simulating network delay
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Church Locator"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
         actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onSelected: (value) => print("Selected: $value"),
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          _buildSearchBar(),
          const SizedBox(height: 10),
          if (isLoading)
            ...List.generate(3, (_) => _buildShimmerCard())
          else
            ...churches.map((church) => _buildChurchCard(church)).toList(),
        ],
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
              MaterialPageRoute(builder: (context) => ProfileScreens()),
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

  Widget _buildSearchBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search, color: Colors.deepOrange),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.filter_alt_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.sort),
              onPressed: () {},
            ),
          ],
        ),
        hintText: "Search...",
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}


  Widget _buildChurchCard(Map<String, String> church) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black12)],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Stack(
              children: [
                Image.asset(
                  church['image']!,
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.bookmark_border, color: Colors.orange),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 16),
                        const SizedBox(width: 4),
                        Text(church['rating']!,
                            style: const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(church['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Row(
              children: [
                const Icon(Icons.location_on, color: Colors.orange, size: 16),
                const SizedBox(width: 4),
                Flexible(child: Text(church['location']!)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShimmerCard() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 220,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
