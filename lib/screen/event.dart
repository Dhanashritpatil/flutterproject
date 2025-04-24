// // // events_page.dart
// // import 'package:flutter/material.dart';

// // class EventsPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Events'),
// //         centerTitle: true,
// //         backgroundColor: Colors.white,
// //         foregroundColor: Colors.black,
// //         elevation: 0,
// //          actions: [
// //           PopupMenuButton<String>(
// //             icon: Icon(Icons.more_vert, color: Colors.black),
// //             onSelected: (value) => print("Selected: $value"),
// //             itemBuilder: (BuildContext context) {
// //               return ['1', '2', '3'].map((String choice) {
// //                 return PopupMenuItem<String>(
// //                   value: choice,
// //                   child: Text(choice),
// //                 );
// //               }).toList();
// //             },
// //           ),
// //         ],
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: ListView(
// //           children: [
// //             _buildDateSection('17 September'),
// //             _buildEventCard('09:30 - 10:00', 'Morning'),
// //             _buildEventCard('10:00 - 10:30', 'Morning'),
// //             _buildEventCard('11:00 - 11:40', 'Morning'),
// //             SizedBox(height: 20),
// //             _buildDateSection('21 September'),
// //             _buildEventCard('09:30 - 10:00', 'Morning'),
// //             _buildEventCard('10:00 - 10:30', 'Morning'),
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         //currentIndex: _selectedIndex,
// //         // onTap: (index) => setState(() => _selectedIndex = index),
// //         selectedItemColor: Colors.black,
// //         unselectedItemColor: Colors.black54,
// //         showSelectedLabels: false,
// //         showUnselectedLabels: false,
// //         items: const [
// //           BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: ''),
// //           BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Colors.black), label: ''),
// //           BottomNavigationBarItem(icon: Icon(Icons.notifications_none, color: Colors.black), label: ''),
// //           BottomNavigationBarItem(icon: Icon(Icons.person_outline, color: Colors.black), label: ''),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildDateSection(String date) {
// //     return Padding(
// //       padding: const EdgeInsets.only(bottom: 8.0),
// //       child: Text(
// //         date,
// //         style: TextStyle(
// //           fontSize: 18,
// //           fontWeight: FontWeight.bold,
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildEventCard(String time, String period) {
// //     return Card(
// //       margin: EdgeInsets.only(bottom: 8.0),
// //       child: ListTile(
// //         title: Text('Event name'),
// //         subtitle: Text('$time | $period'),
// //         trailing: ElevatedButton(
// //           onPressed: () {},
// //           style: ElevatedButton.styleFrom(
// //             backgroundColor: Colors.deepOrange,
// //             shape: RoundedRectangleBorder(
// //               borderRadius: BorderRadius.circular(12),
// //             ),
// //           ),
// //           child: Text('Open'),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class EventsPage extends StatelessWidget {
//   final TextEditingController _searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Events'),
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
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             _buildSearchBar(),
//             SizedBox(height: 16),
//             Expanded(
//               child: ListView(
//                 children: [
//                   _buildDateSection('17 September'),
//                   _buildEventCard('09:30 - 10:00', 'Morning'),
//                   _buildEventCard('10:00 - 10:30', 'Morning'),
//                   _buildEventCard('11:00 - 11:40', 'Morning'),
//                   SizedBox(height: 20),
//                   _buildDateSection('21 September'),
//                   _buildEventCard('09:30 - 10:00', 'Morning'),
//                   _buildEventCard('10:00 - 10:30', 'Morning'),
//                 ],
//               ),
//             ),
//           ],
//         ),
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
//   Widget _buildDateSection(String date) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: Text(
//         date,
//         style: TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }

//   Widget _buildEventCard(String time, String period) {
//     return Card(
//       margin: EdgeInsets.only(bottom: 8.0),
//       child: ListTile(
//         title: Text('Event name'),
//         subtitle: Text('$time | $period'),
//         trailing: ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.deepOrange,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//           ),
//           child: Text('Open'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final TextEditingController _searchController = TextEditingController();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate data loading
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSearchBar(),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: isLoading
                    ? _buildSkeletonLoaders()
                    : [
                        _buildDateSection('17 September'),
                        _buildEventCard('09:30 - 10:00', 'Morning'),
                        _buildEventCard('10:00 - 10:30', 'Morning'),
                        _buildEventCard('11:00 - 11:40', 'Morning'),
                        SizedBox(height: 20),
                        _buildDateSection('21 September'),
                        _buildEventCard('09:30 - 10:00', 'Morning'),
                        _buildEventCard('10:00 - 10:30', 'Morning'),
                      ],
              ),
            ),
          ],
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

  Widget _buildDateSection(String date) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        date,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildEventCard(String time, String period) {
    return Card(
      margin: EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        title: Text('Event name'),
        subtitle: Text('$time | $period'),
        trailing: ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.deepOrange,
    foregroundColor: Colors.white, // This sets the text color to white
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  child: Text('Open'),
),

      ),
    );
  }

  List<Widget> _buildSkeletonLoaders() {
    return List.generate(
      5,
      (index) => Card(
        margin: EdgeInsets.only(bottom: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 20, width: 150, color: Colors.grey[300]),
              SizedBox(height: 8),
              Container(height: 16, width: double.infinity, color: Colors.grey[300]),
            ],
          ),
        ),
      ),
    );
  }
}
