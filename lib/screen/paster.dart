// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'notification.dart';
// import 'home.dart';

// class AddChurchScreen extends StatefulWidget {
//   @override
//   _AddChurchScreenState createState() => _AddChurchScreenState();
// }

// class _AddChurchScreenState extends State<AddChurchScreen> {
//   int _selectedIndex = 0;

//   final fields = [
//     'Church Name',
//     'Flat / Plot no',
//     'Street Name',
//     'Area Name',
//     'City',
//     'State',
//     'Pin code',
//     'Attach photo',
//     'Id',
//     'Event',
//     'Event On',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Add Church"),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
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
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             ...fields.map((field) => Padding(
//               padding: const EdgeInsets.symmetric(vertical: 6.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   labelText: '$field :',
//                   labelStyle: TextStyle(color: Colors.grey),
//                   border: InputBorder.none,
//                 ),
//               ),
//             )),
//             SizedBox(height: 24),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.orangeAccent,
//                 padding: EdgeInsets.symmetric(vertical: 14),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(24),
//                 ),
//               ),
//               onPressed: () {
//                 print("Church Added");
//               },
//               child: Text('Add Church'),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//   currentIndex: _selectedIndex,
//    onTap: (index) {
//   setState(() {
//     _selectedIndex = index;
//   });

//   if (index == 0) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const HomePage()), // <- your HomePage widget
//     );
//   } else if (index == 2) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const NotificationScreen()),
//     );
//   }
// },
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
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification.dart';
import 'home.dart';
import 'user.dart';

class AddChurchScreen extends StatefulWidget {
  @override
  _AddChurchScreenState createState() => _AddChurchScreenState();
}

class _AddChurchScreenState extends State<AddChurchScreen> {
  int _selectedIndex = 0;

  final fields = [
    'Church Name',
    'Flat / Plot no',
    'Street Name',
    'Area Name',
    'City',
    'State',
    'Pin code',
    'Attach photo',
    'Id',
    'Event',
    'Event On',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // <-- To push everything below system status bar
        child: Padding(
          padding: const EdgeInsets.all(16.0), // <-- Padding entire page
          child: Column(
            children: [
              _buildAppBar(),
              SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    ...fields.map((field) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: '$field :',
                              labelStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        )),
                    SizedBox(height: 24),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 180, // <-- smaller button
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            padding: EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          onPressed: () {
                            print("Church Added");
                          },
                          child: Text(
                            'Add Church',
                            style: TextStyle(
                                color: Colors
                                    .white), // <-- set text color to white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
              MaterialPageRoute(builder: (context) => ProfileScreens()),
            );
          }
        }, selectedItemColor: Colors.black,
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

  Widget _buildAppBar() {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Expanded(
          child: Text(
            "Add Church",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
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
    );
  }
}
