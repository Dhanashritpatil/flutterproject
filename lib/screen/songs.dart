// import 'package:flutter/material.dart';

// class SongsScreen extends StatefulWidget {
//   @override
//   _SongsScreenState createState() => _SongsScreenState();
// }

// class _SongsScreenState extends State<SongsScreen> {
//   int _selectedIndex = 0;

//   final List<Map<String, String>> songs = [
//     {'title': 'Above all powers'},
//     {'title': 'All Creatures of Our God'},
//     {'title': 'All to Jesus'},
//     {'title': 'Amazing Grace'},
//     {'title': 'Angels we have heard'},
//     {'title': 'As the Deer Panteth'},
//     {'title': 'At the Cross'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Songs"),
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
//           ...songs.map((song) => _buildSongTile(song['title']!)).toList(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           onTap: (index) => setState(() => _selectedIndex = index),
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.black54,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Colors.black), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.notifications_none, color: Colors.black), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.person_outline, color: Colors.black), label: ''),
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

//   Widget _buildSongTile(String title) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16),
//       child: Row(
//         children: [
//           CircleAvatar(
//             backgroundImage: AssetImage('lib/assets/images/image1.png'), // Replace with your image
//             radius: 28,
//           ),
//           SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
//                 SizedBox(height: 4),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                   decoration: BoxDecoration(
//                     color: Colors.orange.shade100,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Text("22 MIN", style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 12)),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(width: 12),
//           Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
//             ),
//             child: IconButton(
//               icon: Icon(Icons.play_arrow, color: Colors.deepOrange),
//               onPressed: () {
//                 print("Play $title");
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SongsScreen extends StatefulWidget {
  @override
  _SongsScreenState createState() => _SongsScreenState();
}

class _SongsScreenState extends State<SongsScreen> {
  int _selectedIndex = 0;
  bool _isLoading = true;

  final List<Map<String, String>> songs = [
    {'title': 'Above all powers'},
    {'title': 'All Creatures of Our God'},
    {'title': 'All to Jesus'},
    {'title': 'Amazing Grace'},
    {'title': 'Angels we have heard'},
    {'title': 'As the Deer Panteth'},
    {'title': 'At the Cross'},
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  Widget _buildShimmerTile() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 16, width: 150, color: Colors.white),
                  SizedBox(height: 8),
                  Container(height: 12, width: 60, color: Colors.white),
                ],
              ),
            ),
          ),
          SizedBox(width: 12),
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Songs"),
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          _buildSearchBar(),
          SizedBox(height: 10),
          if (_isLoading)
            ...List.generate(6, (_) => _buildShimmerTile())
          else
            ...songs.map((song) => _buildSongTile(song['title']!)).toList(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Colors.black), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none, color: Colors.black), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline, color: Colors.black), label: ''),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black12)],
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.deepOrange),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.filter_list, color: Colors.grey),
          SizedBox(width: 10),
          Icon(Icons.sort, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildSongTile(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('lib/assets/images/image1.png'),
            radius: 28,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                SizedBox(height: 4),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("22 MIN", style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 12)),
                )
              ],
            ),
          ),
          SizedBox(width: 12),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
            ),
            child: IconButton(
              icon: Icon(Icons.play_arrow, color: Colors.deepOrange),
              onPressed: () {
                print("Play $title");
              },
            ),
          ),
        ],
      ),
    );
  }
}

