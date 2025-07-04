// // import 'package:flutter/material.dart';
// // import 'home.dart';

// // class SongBookScreen extends StatelessWidget {
// //   const SongBookScreen({super.key});

// //   final List<Map<String, String>> churches = const [
// //     {
// //       'title': 'Good Shepherd Evangelical Church',
// //       'image': 'lib/assets/images/good_shepherd.jpg',
// //     },
// //     {
// //       'title': 'Christ Gospel Church',
// //       'image': 'lib/assets/images/christ.jpg',
// //     },
// //     {
// //       'title': 'Santhome Cathedral Basilica',
// //       'image': 'lib/assets/images/Group_212.png',
// //     },
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       appBar: AppBar(
// //         elevation: 0,
// //         backgroundColor: Colors.white,
// //         leading: IconButton(
// //           icon: const Icon(Icons.arrow_back, color: Colors.black),
// //           onPressed: () => Navigator.pop(context),
// //         ),
// //         centerTitle: true,
// //         title: const Text('Songs Book', style: TextStyle(color: Colors.black)),
// //         actions: [
// //           IconButton(
// //               icon: Icon(Icons.home_outlined), //SizedBox(width: 12),
// //               color: Colors.deepOrange,
// //               onPressed: () {
// //                 Navigator.pushReplacement(
// //                   context,
// //                   MaterialPageRoute(builder: (_) => HomePage()),
// //                 );
// //               })
// //         ],
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16),
// //         child: Column(
// //           children: [
// //             // Search bar with filter and sort
// //             Container(
// //               padding: const EdgeInsets.symmetric(horizontal: 12),
// //               decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 borderRadius: BorderRadius.circular(24),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.grey.withOpacity(0.15),
// //                     blurRadius: 10,
// //                     offset: const Offset(0, 6),
// //                   ),
// //                 ],
// //               ),
// //               child: Row(
// //                 children: [
// //                   const Icon(Icons.search, color: Colors.grey),
// //                   const SizedBox(width: 8),
// //                   const Expanded(
// //                     child: TextField(
// //                       decoration: InputDecoration(
// //                         hintText: 'Search...',
// //                         border: InputBorder.none,
// //                       ),
// //                     ),
// //                   ),
// //                   IconButton(
// //                     icon: const Icon(Icons.filter_alt_outlined,
// //                         color: Colors.grey),
// //                     onPressed: () {
// //                       // Filter action
// //                     },
// //                   ),
// //                   IconButton(
// //                     icon: const Icon(Icons.sort, color: Colors.grey),
// //                     onPressed: () {
// //                       // Sort action
// //                     },
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             const SizedBox(height: 20),

// //             // Church Cards List
// //             Expanded(
// //               child: ListView.builder(
// //                 itemCount: churches.length,
// //                 itemBuilder: (context, index) {
// //                   final church = churches[index];
// //                   return Padding(
// //                     padding: const EdgeInsets.only(bottom: 20),
// //                     child: GestureDetector(
// //                       onTap: () {
// //                         // Navigate to church song list
// //                       },
// //                       child: Container(
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(16),
// //                           color: Colors.white,
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: Colors.grey.withOpacity(0.15),
// //                               blurRadius: 8,
// //                               offset: const Offset(0, 4),
// //                             ),
// //                           ],
// //                         ),
// //                         child: Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             ClipRRect(
// //                               borderRadius: const BorderRadius.vertical(
// //                                   top: Radius.circular(16)),
// //                               child: Image.asset(
// //                                 church['image']!,
// //                                 height: 360,
// //                                 width: 500,
// //                                 fit: BoxFit.cover,
// //                               ),
// //                             ),
// //                             Padding(
// //                               padding: const EdgeInsets.all(12),
// //                               child: Row(
// //                                 mainAxisAlignment:
// //                                     MainAxisAlignment.spaceBetween,
// //                                 children: [
// //                                   Expanded(
// //                                     child: Text(
// //                                       church['title']!,
// //                                       style: const TextStyle(
// //                                           fontSize: 16,
// //                                           fontWeight: FontWeight.w500),
// //                                     ),
// //                                   ),
// //                                   const Icon(Icons.more_vert),
// //                                 ],
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';
// import 'home.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'notification.dart';

// class SongBookScreen extends StatefulWidget {
//   const SongBookScreen({super.key});

//   @override
//   State<SongBookScreen> createState() => _SongBookScreenState();
// }

// class _SongBookScreenState extends State<SongBookScreen> {
//   bool isLoading = true;

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
//     // Simulate loading delay
//     Future.delayed(const Duration(seconds: 20), () {
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
//                     icon: const Icon(Icons.filter_alt_outlined,
//                         color: Colors.grey),
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
//   currentIndex: _selectedIndex,
//   onTap: (index) {
//     setState(() {
//       _selectedIndex = index;
//     });

//     if (index == 2) {
//       // Navigate to NotificationScreen
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => NotificationScreen()),
//       );
//     }
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
// ),


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
//               // Navigate to church song list
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
//                       width: 600,
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
import 'home.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification.dart';
import 'user.dart';

class SongBookScreen extends StatefulWidget {
  const SongBookScreen({super.key});

  @override
  State<SongBookScreen> createState() => _SongBookScreenState();
}

class _SongBookScreenState extends State<SongBookScreen> {
  bool isLoading = true;
  int _selectedIndex = 0;

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
    // Simulate loading delay
    Future.delayed(const Duration(seconds: 20), () {
      setState(() {
        isLoading = false;
      });
    });
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
                    icon: const Icon(Icons.filter_alt_outlined,
                        color: Colors.grey),
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
      ), bottomNavigationBar: BottomNavigationBar(
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

  Widget _buildChurchList() {
    return ListView.builder(
      itemCount: churches.length,
      itemBuilder: (context, index) {
        final church = churches[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GestureDetector(
            onTap: () {
              // Navigate to church song list
            },
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
                      width: 600,
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

