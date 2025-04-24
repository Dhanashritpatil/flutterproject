//  import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//  class DailyMannaScreen extends StatefulWidget {
//    const DailyMannaScreen({super.key});

//    @override
//    State<DailyMannaScreen> createState() => _DailyMannaScreenState();
//  }

// class _DailyMannaScreenState extends State<DailyMannaScreen> {
//   final List<Map<String, dynamic>> mannaItems = [
//     {
//       "image": "lib/assets/images/pic1.png",
//       "verse": "Grace be with you all.",
//       "date": "Mon\n9 Feb\n2025",
//       "likes": 115,
//       "views": 200,
//       "shares": 102,
//       "liked": false,
//     },
//     {
//       "image": "lib/assets/images/pic2.png",
//       "verse": "Rejoice always.",
//       "date": "Tue\n10 Feb\n2025",
//       "likes": 200,
//       "views": 215,
//       "shares": 201,
//       "liked": false,
//     },
//   ];

//   void _onCardTap(Map<String, dynamic> item) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (_) => DailyMannaDetailScreen(item)),
//     );
//   }

//   Future<void> _refreshList() async {
//     setState(() {
//       mannaItems.shuffle();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF8F8F8),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: const BackButton(),
//         title: const Text('Daily Manna'),
//         actions: [
//           PopupMenuButton<String>(
//             icon: Icon(Icons.more_vert),
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

//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
//             child: TextField(
//               decoration: InputDecoration(
//                 prefixIcon: const Icon(Icons.search, color: Colors.deepOrange),
//                 suffixIcon: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.filter_alt_outlined),
//                       onPressed: () {},
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.sort),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//                 hintText: "Search...",
//                 filled: true,
//                 fillColor: Colors.white,
//                 contentPadding: const EdgeInsets.symmetric(vertical: 0),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(16),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: RefreshIndicator(
//               onRefresh: _refreshList,
//               child: ListView.builder(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 itemCount: mannaItems.length,
//                 itemBuilder: (context, index) {
//                   final item = mannaItems[index];
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       GestureDetector(
//                         onTap: () => _onCardTap(item),
//                         child: Stack(
//                           alignment: Alignment.center,
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(12),
//                               child: Image.asset(
//                                 item['image'],
//                                 width: double.infinity,
//                                 height: 180,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Container(
//                               width: double.infinity,
//                               height: 180,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(12),
//                                 color: Colors.black.withOpacity(0.2),
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 12),
//                               child: Text(
//                                 item['verse'],
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       Container(
//                         margin: const EdgeInsets.only(bottom: 16),
//                         padding: const EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(16),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.deepPurple.withOpacity(0.08),
//                               blurRadius: 8,
//                               offset: const Offset(0, 4),
//                             )
//                           ],
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               item['date'],
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       item['liked'] = !item['liked'];
//                                       item['likes'] += item['liked'] ? 1 : -1;
//                                     });
//                                   },
//                                   child: Icon(
//                                     item['liked']
//                                         ? Icons.favorite
//                                         : Icons.favorite_border,
//                                     size: 20,
//                                     color: item['liked']
//                                         ? Colors.red
//                                         : Colors.grey,
//                                   ),
//                                 ),
//                                 const SizedBox(width: 4),
//                                 Text('${item['likes']}'),
//                                 const SizedBox(width: 12),
//                                 const Icon(Icons.remove_red_eye_outlined,
//                                     size: 20),
//                                 const SizedBox(width: 4),
//                                 Text('${item['views']}'),
//                                 const SizedBox(width: 12),
//                                 GestureDetector(
//                                   onTap: () {
//                                     showDialog(
//                                       context: context,
//                                       builder: (_) => AlertDialog(
//                                         title: const Text("Comments"),
//                                         content: const Text(
//                                             "Comments feature coming soon!"),
//                                         actions: [
//                                           TextButton(
//                                             onPressed: () =>
//                                                 Navigator.pop(context),
//                                             child: const Text("Close"),
//                                           )
//                                         ],
//                                       ),
//                                     );
//                                   },
//                                   child:
//                                       const Icon(Icons.mail_outline, size: 20),
//                                 ),
//                                 const SizedBox(width: 4),
//                                 Text('${item['shares']}'),
//                               ],
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   );
//                 },
//               ),
//             ),
//           ),
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
// }

// class DailyMannaDetailScreen extends StatelessWidget {
//   final Map<String, dynamic> item;
//   const DailyMannaDetailScreen(this.item, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(item['verse'])),
//       body: Column(
//         children: [
//           Image.asset(item['image'],
//               width: double.infinity, height: 250, fit: BoxFit.cover),
//           const SizedBox(height: 16),
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Text(
//               item['verse'],
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';

// // class DailyMannaScreen extends StatefulWidget {
// //   @override
// //   State<DailyMannaScreen> createState() => _DailyMannaScreenState();
// // }

// // class _DailyMannaScreenState extends State<DailyMannaScreen> {
// //   int _selectedIndex = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Daily Manna"),
// //         centerTitle: true,
// //         backgroundColor: Colors.white,
// //         foregroundColor: Colors.black,
// //         elevation: 0,
// //         leading: Icon(Icons.arrow_back),
// //         actions: [
// //           PopupMenuButton<String>(
// //             icon: Icon(Icons.more_vert),
// //             onSelected: (value) {
// //               print("Selected: $value");
// //             },
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
// //       body: Center(child: Text("Your content here")),
// //       bottomNavigationBar: BottomNavigationBar(
// //         currentIndex: _selectedIndex,
// //         onTap: (index) => setState(() => _selectedIndex = index),
// //         selectedItemColor: Colors.black,
// //         unselectedItemColor: Colors.black54,
// //         items: const [
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home, color: Colors.black),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.favorite_border, color: Colors.black),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home_repair_service, color: Colors.black),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.person_outline, color: Colors.black),
// //             label: '',
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

class DailyMannaScreen extends StatefulWidget {
  const DailyMannaScreen({super.key});

  @override
  State<DailyMannaScreen> createState() => _DailyMannaScreenState();
}

class _DailyMannaScreenState extends State<DailyMannaScreen> {
  bool isLoading = true;

  final List<Map<String, dynamic>> mannaItems = [
    {
      "image": "lib/assets/images/pic1.png",
      "verse": "Grace be with you all.",
      "date": "Mon\n9 Feb\n2025",
      "likes": 115,
      "views": 200,
      "shares": 102,
      "liked": false,
    },
    {
      "image": "lib/assets/images/pic2.png",
      "verse": "Rejoice always.",
      "date": "Tue\n10 Feb\n2025",
      "likes": 200,
      "views": 215,
      "shares": 201,
      "liked": false,
    },
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  Future<void> _refreshList() async {
    setState(() {
      mannaItems.shuffle();
    });
  }

  void _onCardTap(Map<String, dynamic> item) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => DailyMannaDetailScreen(item)),
    );
  }

  Widget _buildShimmerCard() {
    return Column(
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(),
        title: const Text('Daily Manna'),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
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
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: _refreshList,
              child: isLoading
                  ? ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: 3,
                      itemBuilder: (context, index) => _buildShimmerCard(),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: mannaItems.length,
                      itemBuilder: (context, index) {
                        final item = mannaItems[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () => _onCardTap(item),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      item['image'],
                                      width: double.infinity,
                                      height: 180,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Text(
                                      item['verse'],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              margin: const EdgeInsets.only(bottom: 16),
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepPurple.withOpacity(0.08),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item['date'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            item['liked'] = !item['liked'];
                                            item['likes'] +=
                                                item['liked'] ? 1 : -1;
                                          });
                                        },
                                        child: Icon(
                                          item['liked']
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          size: 20,
                                          color: item['liked']
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Text('${item['likes']}'),
                                      const SizedBox(width: 12),
                                      const Icon(Icons.remove_red_eye_outlined,
                                          size: 20),
                                      const SizedBox(width: 4),
                                      Text('${item['views']}'),
                                      const SizedBox(width: 12),
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (_) => AlertDialog(
                                              title: const Text("Comments"),
                                              content: const Text(
                                                  "Comments feature coming soon!"),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(context),
                                                  child: const Text("Close"),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                        child: const Icon(Icons.mail_outline,
                                            size: 20),
                                      ),
                                      const SizedBox(width: 4),
                                      Text('${item['shares']}'),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
            ),
          ),
        ],
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

class DailyMannaDetailScreen extends StatelessWidget {
  final Map<String, dynamic> item;
  const DailyMannaDetailScreen(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item['verse'])),
      body: Column(
        children: [
          Image.asset(item['image'],
              width: double.infinity, height: 250, fit: BoxFit.cover),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              item['verse'],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
