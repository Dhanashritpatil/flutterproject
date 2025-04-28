// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class KidsCornerScreen extends StatefulWidget {
//   @override
//   _KidsCornerScreenState createState() => _KidsCornerScreenState();
// }

// class _KidsCornerScreenState extends State<KidsCornerScreen> {
//   int _selectedIndex = 0;

//   final List<Map<String, String>> kidsItems = [
//     {
//       'title': 'Sunday Schools',
//       'desc':
//           'Find all the sunday schools near your locality Lorem ipsum dolor sit amet.',
//       'image': 'lib/assets/images/home.png'
//     },
//     {
//       'title': 'Vacation Bible School',
//       'desc':
//           'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et velit ut purus lobortis facilisis.',
//       'image': 'lib/assets/images/kid_drawing.png'
//     },
//     {
//       'title': 'Children Songs',
//       'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//       'image': 'lib/assets/images/kids_singing.png'
//     },
//     {
//       'title': 'Worksheets',
//       'desc':
//           'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et velit ut purus.',
//       'image': 'lib/assets/images/group.png'
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Kids Corner"),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0,
//         // leading: Icon(Icons.arrow_back, color: Colors.black),
//        actions: [
//           PopupMenuButton<String>(
//             icon: Icon(Icons.more_vert, color: Colors.black),
//             onSelected: (value) => print("Selected: $value"),
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
//         padding: EdgeInsets.all(16),
//         children: [
//           _buildSearchBar(),
//           SizedBox(height: 20),
//           ...kidsItems.map((item) => _buildCard(item)).toList(),
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

//   Widget _buildCard(Map<String, String> item) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 20),
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black12)],
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(item['title']!,
//                     style:
//                         TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//                 SizedBox(height: 6),
//                 Text(item['desc']!,
//                     style: TextStyle(color: Colors.grey.shade700)),
//               ],
//             ),
//           ),
//           SizedBox(width: 10),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: Image.asset(
//               item['image']!,
//               width: 100,
//               height: 100,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:shimmer/shimmer.dart';
// import 'notification.dart';

// class KidsCornerScreen extends StatefulWidget {
//   @override
//   _KidsCornerScreenState createState() => _KidsCornerScreenState();
// }

// class _KidsCornerScreenState extends State<KidsCornerScreen> {
//   bool isLoading = true; // Set to true to show loader initially
// int _selectedIndex = 0; // Initialize it with the first tab index

//   final List<Map<String, String>> kidsItems = [
//     {
//       'title': 'Sunday Schools',
//       'desc':
//           'Find all the sunday schools near your locality Lorem ipsum dolor sit amet.',
//       'image': 'lib/assets/images/home.png'
//     },
//     {
//       'title': 'Vacation Bible School',
//       'desc':
//           'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et velit ut purus lobortis facilisis.',
//       'image': 'lib/assets/images/kid_drawing.png'
//     },
//     {
//       'title': 'Children Songs',
//       'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//       'image': 'lib/assets/images/kids_singing.png'
//     },
//     {
//       'title': 'Worksheets',
//       'desc':
//           'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et velit ut purus.',
//       'image': 'lib/assets/images/group.png'
//     },
//   ];

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 2), () {
//       setState(() {
//         isLoading = false; // Simulate loading completion
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Kids Corner"),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0,
//         actions: [
//           PopupMenuButton<String>(
//             icon: Icon(Icons.more_vert, color: Colors.black),
//             onSelected: (value) => print("Selected: $value"),
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
//         padding: EdgeInsets.all(16),
//         children: [
//           _buildSearchBar(),
//           SizedBox(height: 20),
//           // Show skeleton loader or real data based on isLoading
//           ...isLoading
//               ? List.generate(4, (index) => _buildSkeletonCard()) // Show skeleton loader
//               : kidsItems.map((item) => _buildCard(item)).toList(), // Show real data
//         ],
     
//       ),
//      bottomNavigationBar: BottomNavigationBar(
//   currentIndex: _selectedIndex,
//   onTap: (index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   },
//   selectedItemColor: Colors.black,
//   unselectedItemColor: Colors.black54,
//   showSelectedLabels: false,
//   showUnselectedLabels: false,
//   type: BottomNavigationBarType.fixed,
//   items: [
//     BottomNavigationBarItem(
//       icon: Padding(
//         padding: const EdgeInsets.only(top: 6.0),
//         child: SvgPicture.asset(
//           'lib/assets/icons/home_icon.svg',
//           width: 20,
//           height: 20,
//           color: Colors.black,
//         ),
//       ),
//       label: '',
//     ),
//     BottomNavigationBarItem(
//       icon: Padding(
//         padding: const EdgeInsets.only(top: 6.0),
//         child: SvgPicture.asset(
//           'lib/assets/icons/favorite_icon.svg',
//           width: 20,
//           height: 20,
//           color: Colors.black,
//         ),
//       ),
//       label: '',
//     ),
//     BottomNavigationBarItem(
//       icon: Padding(
//         padding: const EdgeInsets.only(top: 6.0),
//         child: SvgPicture.asset(
//           'lib/assets/icons/hallow_notification.svg',
//           width: 20,
//           height: 20,
//           color: Colors.black,
//         ),
//       ),
//       label: '',
//     ),
//     BottomNavigationBarItem(
//       icon: Padding(
//         padding: const EdgeInsets.only(top: 6.0),
//         child: SvgPicture.asset(
//           'lib/assets/icons/user_icon.svg',
//           width: 20,
//           height: 20,
//           color: Colors.black,
//         ),
//       ),
//       label: '',
//     ),
//   ],
// )


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

//   Widget _buildCard(Map<String, String> item) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 20),
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black12)],
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(item['title']!,
//                     style:
//                         TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//                 SizedBox(height: 6),
//                 Text(item['desc']!,
//                     style: TextStyle(color: Colors.grey.shade700)),
//               ],
//             ),
//           ),
//           SizedBox(width: 10),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: Image.asset(
//               item['image']!,
//               width: 100,
//               height: 100,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSkeletonCard() {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey.shade300,
//       highlightColor: Colors.grey.shade100,
//       child: Container(
//         margin: EdgeInsets.only(bottom: 20),
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black12)],
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               color: Colors.white,
//               width: 100,
//               height: 100,
//             ),
//             SizedBox(width: 10),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     color: Colors.white,
//                     width: 100,
//                     height: 20,
//                   ),
//                   SizedBox(height: 6),
//                   Container(
//                     color: Colors.white,
//                     width: double.infinity,
//                     height: 16,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'notification.dart';

// class SongBookScreen extends StatefulWidget {
//   const SongBookScreen({super.key});

//   @override
//   State<SongBookScreen> createState() => _SongBookScreenState();
// }

// class _SongBookScreenState extends State<SongBookScreen> {
//   bool isLoading = true;
//   int _selectedIndex = 0;

//   final List<Map<String, String>> churches = const [
//     {
//       'title': 'Good Shepherd Evangelical Church',
//       'image': 'lib/assets/images/good_shepherd.jpg',
//     },
//     {
//       'title': 'Christ Gospel Church',
//       'image': 'lib/assets/images/christ.jpg',
//     },
//     {
//       'title': 'Santhome Cathedral Basilica',
//       'image': 'lib/assets/images/Group_212.png',
//     },
//   ];

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 3), () {
//       setState(() {
//         isLoading = false;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         actions: [
//           PopupMenuButton<String>(
//             icon: const Icon(Icons.more_vert, color: Colors.black),
//             onSelected: (value) => print("Selected: $value"),
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
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // Search Bar
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 12),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(24),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.15),
//                     blurRadius: 10,
//                     offset: const Offset(0, 6),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   const Icon(Icons.search, color: Colors.grey),
//                   const SizedBox(width: 8),
//                   const Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Search...',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.filter_alt_outlined, color: Colors.grey),
//                     onPressed: () {},
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.sort, color: Colors.grey),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),

//             // List or Skeleton
//             Expanded(
//               child: isLoading ? _buildSkeletonList() : _buildChurchList(),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });

//           if (index == 2) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const NotificationScreen()),
//             );
//           }
//         },
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
//                 color: _selectedIndex == 0 ? Colors.black : Colors.black54,
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
//                 color: _selectedIndex == 1 ? Colors.black : Colors.black54,
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
//                 color: _selectedIndex == 2 ? Colors.black : Colors.black54,
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
//                 color: _selectedIndex == 3 ? Colors.black : Colors.black54,
//               ),
//             ),
//             label: '',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildChurchList() {
//     return ListView.builder(
//       itemCount: churches.length,
//       itemBuilder: (context, index) {
//         final church = churches[index];
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 20),
//           child: GestureDetector(
//             onTap: () {
//               // Add navigation to songs if needed
//             },
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.15),
//                     blurRadius: 8,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ClipRRect(
//                     borderRadius: const BorderRadius.vertical(
//                       top: Radius.circular(16),
//                     ),
//                     child: Image.asset(
//                       church['image']!,
//                       height: 360,
//                       width: double.infinity,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(12),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(
//                           child: Text(
//                             church['title']!,
//                             style: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                         const Icon(Icons.more_vert),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildSkeletonList() {
//     return ListView.builder(
//       itemCount: 3,
//       itemBuilder: (context, index) => Padding(
//         padding: const EdgeInsets.only(bottom: 20),
//         child: Shimmer.fromColors(
//           baseColor: Colors.grey[300]!,
//           highlightColor: Colors.grey[100]!,
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   height: 360,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[300],
//                     borderRadius: const BorderRadius.vertical(
//                       top: Radius.circular(16),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Container(
//                     height: 20,
//                     width: double.infinity,
//                     color: Colors.grey[300],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification.dart'; 
import 'holy_bible.dart';
import 'user.dart';
import 'home.dart';// 👈 import your Notification screen here

class KidsCornerScreen extends StatefulWidget {
  const KidsCornerScreen({super.key});

  @override
  State<KidsCornerScreen> createState() => _KidsCornerScreenState();
}

class _KidsCornerScreenState extends State<KidsCornerScreen> {
  bool isLoading = true;
  int _selectedIndex = 1; // Kids Corner index

  final List<Map<String, String>> churches = const [
    {
      'title': 'Good Shepherd Evangelical Church',
      'image': 'lib/assets/images/good_shepherd.jpg',
    },
    {
      'title': 'Christ Gospel Church',
      'image': 'lib/assets/images/christ.jpg',
    },
    {
      'title': 'Santhome Cathedral Basilica',
      'image': 'lib/assets/images/Group_212.png',
    },
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  void _onItemTapped(int index) {
    if (index == 2) {
      // 👇 Open notification screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NotificationScreen()),
      );
    } else {
      // Just update selected index
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.black),
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    blurRadius: 10,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.grey),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.filter_alt_outlined, color: Colors.grey),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.sort, color: Colors.grey),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // List or Skeleton
            Expanded(
              child: isLoading ? _buildSkeletonList() : _buildChurchList(),
            ),
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

  Widget _buildChurchList() {
    return ListView.builder(
      itemCount: churches.length,
      itemBuilder: (context, index) {
        final church = churches[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.asset(
                      church['image']!,
                      height: 360,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            church['title']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSkeletonList() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 360,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    height: 20,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
