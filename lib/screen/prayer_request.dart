// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:shimmer/shimmer.dart';

// class PrayerRequestScreen extends StatefulWidget {
//   @override
//   _PrayerRequestScreenState createState() => _PrayerRequestScreenState();
// }

// class _PrayerRequestScreenState extends State<PrayerRequestScreen> {
//   int _selectedIndex = 0;

//   final List<Map<String, dynamic>> prayerRequests = [
//     {
//       'date': 'Jan 09, 2021',
//       'text': 'urgent pray for my new home... documents stuck at icici bank legal technician for disbussed',
//       'prayed': 11
//     },
//     {
//       'date': 'Sep 22, 2020',
//       'text': 'plz.... mere buva ke liye pray kariye unka name snehal mahendra bhoir hai. covid positive suffered from last...',
//       'prayed': 23
//     },
//     {
//       'date': 'Jul 31, 2020',
//       'text': 'pls pray for my own house.. thanku lord.. i received in the name of jesus.',
//       'prayed': 15
//     },
//     {
//       'date': 'Jul 05, 2020',
//       'text': 'plz pray for my husband 3days se unki tabblyat tik nahi hai cold fever and cough hai mere husband ka',
//       'prayed': 0
//     },
//     {
//       'date': 'Jul 04, 2020',
//       'text': 'pls mere liye prayer kare, mujhe kal suddenly fever aaya aur ratko cold bhi lag raha tha maine dawai kha.',
//       'prayed': 0
//     },
//   ];
  
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Prayer Request"),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0,
//         leading: Icon(Icons.arrow_back, color: Colors.black),
//         actions: [
//           PopupMenuButton<String>(
//             icon: Icon(Icons.more_vert, color: Colors.black),
//             onSelected: (value) {
//               print("Selected option: $value");
//             },
//             itemBuilder: (context) {
//               return ['1', '2', '3'].map((option) {
//                 return PopupMenuItem(
//                   value: option,
//                   child: Text(option),
//                 );
//               }).toList();
//             },
//           )
//         ],
//       ),
//       body: ListView.builder(
//         padding: EdgeInsets.all(16),
//         itemCount: prayerRequests.length,
//         itemBuilder: (context, index) {
//           final item = prayerRequests[index];
//           return Container(
//             margin: EdgeInsets.only(bottom: 16),
//             padding: EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black12)],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(item['date'], style: TextStyle(color: Colors.grey)),
//                 SizedBox(height: 8),
//                 Text(item['text']),
//                 SizedBox(height: 12),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Closed', style: TextStyle(color: Colors.grey)),
//                     Text('Prayed for ${item['prayed']} times', style: TextStyle(color: Colors.grey)),
//                   ],
//                 )
//               ],
//             ),
//           );
//         },
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
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

class PrayerRequestScreen extends StatefulWidget {
  @override
  _PrayerRequestScreenState createState() => _PrayerRequestScreenState();
}

class _PrayerRequestScreenState extends State<PrayerRequestScreen> {
  int _selectedIndex = 0;
  bool _isLoading = true;

  final List<Map<String, dynamic>> prayerRequests = [
    {
      'date': 'Jan 09, 2021',
      'text': 'urgent pray for my new home...',
      'prayed': 11
    },
    {
      'date': 'Sep 22, 2020',
      'text': 'plz.... mere buva ke liye pray kariye...',
      'prayed': 23
    },
    {
      'date': 'Jul 31, 2020',
      'text': 'pls pray for my own house...',
      'prayed': 15
    },
    {
      'date': 'Jul 05, 2020',
      'text': 'plz pray for my husband...',
      'prayed': 0
    },
    {
      'date': 'Jul 04, 2020',
      'text': 'pls mere liye prayer kare...',
      'prayed': 0
    },
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() => _isLoading = false);
    });
  }

  Widget buildShimmerCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black12)],
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 14, width: 80, color: Colors.white),
            SizedBox(height: 10),
            Container(height: 14, width: double.infinity, color: Colors.white),
            SizedBox(height: 6),
            Container(height: 14, width: double.infinity, color: Colors.white),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 14, width: 60, color: Colors.white),
                Container(height: 14, width: 100, color: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prayer Request"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onSelected: (value) {
              print("Selected option: $value");
            },
            itemBuilder: (context) {
              return ['1', '2', '3'].map((option) {
                return PopupMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList();
            },
          )
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: _isLoading ? 4 : prayerRequests.length,
        itemBuilder: (context, index) {
          if (_isLoading) {
            return buildShimmerCard();
          } else {
            final item = prayerRequests[index];
            return Container(
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black12)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item['date'], style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 8),
                  Text(item['text']),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Closed', style: TextStyle(color: Colors.grey)),
                      Text('Prayed for ${item['prayed']} times', style: TextStyle(color: Colors.grey)),
                    ],
                  )
                ],
              ),
            );
          }
        },
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
}

