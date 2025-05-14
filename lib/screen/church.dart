// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/flutter_svg.dart';

// // class ChurchDetailScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.transparent,
// //         elevation: 0,
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back, color: Colors.black),
// //           onPressed: () => Navigator.pop(context),
// //         ),
// //         actions: [
// //           PopupMenuButton<String>(
// //             icon: Icon(Icons.more_vert, color: Colors.black),
// //             onSelected: (value) {
// //               // handle menu selection
// //               print('Selected: $value');
// //             },
// //             itemBuilder: (context) => [
// //               PopupMenuItem(value: '1', child: Text('Option 1')),
// //               PopupMenuItem(value: '2', child: Text('Option 2')),
// //               PopupMenuItem(value: '3', child: Text('Option 3')),
// //             ],
// //           ),
// //         ],
// //       ),
// //        bottomNavigationBar: BottomNavigationBar(
// //         selectedItemColor: Colors.black,
// //         unselectedItemColor: Colors.black54,
// //         showSelectedLabels: false,
// //         showUnselectedLabels: false,
// //         type: BottomNavigationBarType.fixed,
// //         items: [
// //           BottomNavigationBarItem(
// //             icon: Padding(
// //               padding: const EdgeInsets.only(top: 6.0),
// //               child: SvgPicture.asset(
// //                 'lib/assets/icons/home_icon.svg',
// //                 width: 20,
// //                 height: 20,
// //                 color: Colors.black,
// //               ),
// //             ),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Padding(
// //               padding: const EdgeInsets.only(top: 6.0),
// //               child: SvgPicture.asset(
// //                 'lib/assets/icons/favorite_icon.svg',
// //                 width: 20,
// //                 height: 20,
// //                 color: Colors.black,
// //               ),
// //             ),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Padding(
// //               padding: const EdgeInsets.only(top: 6.0),
// //               child: SvgPicture.asset(
// //                 'lib/assets/icons/hallow_notification.svg',
// //                 width: 20,
// //                 height: 20,
// //                 color: Colors.black,
// //               ),
// //             ),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Padding(
// //               padding: const EdgeInsets.only(top: 6.0),
// //               child: SvgPicture.asset(
// //                 'lib/assets/icons/user_icon.svg',
// //                 width: 20,
// //                 height: 20,
// //                 color: Colors.black,
// //               ),
// //             ),
// //             label: '',
// //           ),
// //         ],
// //       ),
// //       body: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Image.network(
// //             'lib/assets/images/church_image.png',
// //             width: double.infinity,
// //             height: 200,
// //             fit: BoxFit.cover,
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(12.0),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Text(
// //                   'Good Shepherd Evangelical Church',
// //                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
// //                 ),
// //                 Row(
// //                   children: [
// //                     Icon(Icons.location_on, size: 16, color: Colors.orange),
// //                     SizedBox(width: 4),
// //                     Text('Serilingampalle HYD, 500019'),
// //                   ],
// //                 ),
// //                 SizedBox(height: 8),
// //                 Row(
// //                   children: [
// //                     Container(
// //                       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
// //                       decoration: BoxDecoration(
// //                         color: Colors.orange,
// //                         borderRadius: BorderRadius.circular(12),
// //                       ),
// //                       child: Text('Hours', style: TextStyle(color: Colors.white)),
// //                     ),
// //                     SizedBox(width: 8),
// //                     Text('12–3:30pm, 6–7pm'),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //           DefaultTabController(
// //             length: 3,
// //             child: Column(
// //               children: [
// //                 TabBar(
// //                   labelColor: Colors.black,
// //                   unselectedLabelColor: Colors.grey,
// //                   indicatorColor: Colors.orange,
// //                   tabs: [
// //                     Tab(text: 'About'),
// //                     Tab(text: 'Preaching'),
// //                     Tab(text: 'Media'),
// //                   ],
// //                 ),
// //                 Container(
// //                   height: 200, // adjust height as needed
// //                   child: TabBarView(
// //                     children: [
// //                       Padding(
// //                         padding: EdgeInsets.all(12),
// //                         child: Text(
// //                           'Lorem ipsum dolor sit amet, consectetur adipiscing elit...'
// //                         ),
// //                       ),
// //                       Center(child: Text('Preaching Content')),
// //                       Center(child: Text('Media Content')),
// //                     ],
// //                   ),
// //                 )
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),

// //     );
// //   }
// // }

// //------------------------Skeleton loader------------------------------
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:shimmer/shimmer.dart'; // Add shimmer package
// import 'notification.dart';
// import 'home.dart';
// import 'user.dart';

// class ChurchDetailScreen extends StatefulWidget {
//   @override
//   _ChurchDetailScreenState createState() => _ChurchDetailScreenState();
// }

// class _ChurchDetailScreenState extends State<ChurchDetailScreen> {
//   bool _isLoading = true;
//     int _selectedIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _loadData();
//   }

//   Future<void> _loadData() async {
//     await Future.delayed(Duration(seconds: 3)); // Simulate network delay
//     setState(() {
//       _isLoading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//          actions: [
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
//      bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });

//           if (index == 2) {
//             // Open Notification screen when bell is tapped
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const NotificationScreen()),
//             );
//           }
//           // Optionally handle other indices (Home, Favorites, Profile)
//           else if (index == 0) {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const HomePage()),
//             );
//           } else if (index == 3) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ProfileScreens()),
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
//       body: _isLoading ? _buildSkeletonLoader() : _buildContent(),
//     );
//   }

//   Widget _buildSkeletonLoader() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Shimmer.fromColors(
//           baseColor: Colors.grey[300]!,
//           highlightColor: Colors.grey[100]!,
//           child: Container(
//             width: double.infinity,
//             height: 200,
//             color: Colors.grey[300],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Shimmer.fromColors(
//                 baseColor: Colors.grey[300]!,
//                 highlightColor: Colors.grey[100]!,
//                 child: Container(
//                   height: 20,
//                   width: 200,
//                   color: Colors.grey[300],
//                 ),
//               ),
//               SizedBox(height: 8),
//               Shimmer.fromColors(
//                 baseColor: Colors.grey[300]!,
//                 highlightColor: Colors.grey[100]!,
//                 child: Container(
//                   height: 16,
//                   width: 150,
//                   color: Colors.grey[300],
//                 ),
//               ),
//               SizedBox(height: 16),
//               Shimmer.fromColors(
//                 baseColor: Colors.grey[300]!,
//                 highlightColor: Colors.grey[100]!,
//                 child: Container(
//                   height: 16,
//                   width: 250,
//                   color: Colors.grey[300],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildContent() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image.network(
//           'lib/assets/images/church_image.png',
//           width: double.infinity,
//           height: 200,
//           fit: BoxFit.cover,
//         ),
//         Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Good Shepherd Evangelical Church',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//               ),
//               Row(
//                 children: [
//                   Icon(Icons.location_on, size: 16, color: Colors.orange),
//                   SizedBox(width: 4),
//                   Text('Serilingampalle HYD, 500019'),
//                 ],
//               ),
//               SizedBox(height: 8),
//               Row(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: Colors.orange,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Text('Hours', style: TextStyle(color: Colors.white)),
//                   ),
//                   SizedBox(width: 8),
//                   Text('12–3:30pm, 6–7pm'),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         DefaultTabController(
//           length: 3,
//           child: Column(
//             children: [
//               TabBar(
//                 labelColor: Colors.black,
//                 unselectedLabelColor: Colors.grey,
//                 indicatorColor: Colors.orange,
//                 tabs: [
//                   Tab(text: 'About'),
//                   Tab(text: 'Preaching'),
//                   Tab(text: 'Media'),
//                 ],
//               ),
//               Container(
//                 height: 200,
//                 child: TabBarView(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(12),
//                       child: Text(
//                         'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
//                       ),
//                     ),
//                     Center(child: Text('Preaching Content')),
//                     Center(child: Text('Media Content')),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'notification.dart';
import 'home.dart';
import 'user.dart';

class ChurchDetailsScreen extends StatefulWidget {
  const ChurchDetailsScreen({super.key});

  @override
  State<ChurchDetailsScreen> createState() => _ChurchDetailsScreenState();
}

class _ChurchDetailsScreenState extends State<ChurchDetailsScreen> {
  int _selectedIndex = 0;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8E9DC),
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.brown),
        centerTitle: true,
        title: const Text(
          'Church',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onSelected: (value) => print("Selected: \$value"),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NotificationScreen()),
            );
          } else if (index == 0) {
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
      body: _isLoading ? _buildSkeletonLoader() : _buildContent(),
    );
  }

  Widget _buildSkeletonLoader() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Center(
          child: Container(
            height: 140,
            width: 240,
            color: Colors.blueGrey[100],
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sunny City Church',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                'Nulla pellentesque tellus et lacus tincidunt, a et auctor quam tincidunt. Praesent aliquet church',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.location_on_outlined,
                      size: 16, color: Colors.orange),
                  SizedBox(width: 4),
                  Text('Serilingampalle HYD,500019'),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Chip(
                    label: Text('Hours'),
                    backgroundColor: Colors.orange,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 8),
                  Text('12–3:30pm, 6–7pm'),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Follow'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.teal,
                    side: const BorderSide(color: Colors.teal),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Share'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 24),
              Text('Preaching', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 24),
              Text('Media', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(height: 4),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(thickness: 1),
        ),
        const Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque libero eros, efficitur eu convallis eu, sollicitudin eu ipsum. Donec blandit facilisis eros, sed consectetur nunc ullamcorper et. Vestibulum feugiat pulvinar tortor, vel laoreet eros finibus non. Suspendisse facilisis vehicula tempus. In sed placerat risus. Mauris bibendum massa in interdum sollicitudin.',
            ),
          ),
        ),
      ],
    );
  }
}
