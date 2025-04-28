// // import 'package:flutter/material.dart';
// // import 'notification.dart';
// // import 'package:flutter_svg/flutter_svg.dart';

// // class HomePage extends StatelessWidget {
// //   final List<_GridItem> gridItems = [
// //     _GridItem("Church Locator", Icons.location_on, '/charch'),
// //     _GridItem("Holy Bible Access", Icons.menu_book, '/holybible'),
// //     _GridItem("Daily Manna", Icons.book, '/dailymanna'),
// //     _GridItem("Prayer Requests", Icons.message, '/prayer'),
// //     _GridItem("Songs Book", Icons.library_music, '/songbook '),
// //     _GridItem("Videos", Icons.video_library, '/videos'),
// //     _GridItem("Refer and Earn", Icons.card_giftcard, '/referrs'),
// //     _GridItem("Donate", Icons.volunteer_activism, '/donation'),
// //     _GridItem("Christian Matrimony", Icons.favorite, '/matrimony'),
// //     _GridItem("Event", Icons.favorite, '/events'),
// //     _GridItem("Christian Shopping", Icons.shopping_cart, '/shopping'),
// //     _GridItem("Bible School", Icons.school, '/bibleSchool'),
// //     _GridItem("Bible Quiz", Icons.quiz, '/bibleQuiz'),
// //     _GridItem("Ask Bible TH", Icons.chat, '/askBibleTH'),
// //     _GridItem("Kid’s Corner", Icons.child_care, '/kidscorner'),
// //     _GridItem("Songs", Icons.music_note, '/songs'),
// //     _GridItem("church", Icons.music_note, '/church'),
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Praise The Lord..."),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(10.0),
// //           child: Column(
// //             children: [
// //               _buildRaiseHandBanner(context),
// //               const SizedBox(height: 12),
// //               GridView.builder(
// //                 itemCount: gridItems.length,
// //                 physics: NeverScrollableScrollPhysics(),
// //                 shrinkWrap: true,
// //                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                   crossAxisCount: 3,
// //                   mainAxisSpacing: 10,
// //                   crossAxisSpacing: 10,
// //                   childAspectRatio: 0.9,
// //                 ),
// //                 itemBuilder: (context, index) {
// //                   final item = gridItems[index];
// //                   return GestureDetector(
// //                     onTap: () => Navigator.pushNamed(context, item.route),
// //                     child: Container(
// //                       decoration: BoxDecoration(
// //                         color: Theme.of(context).cardColor,
// //                         borderRadius: BorderRadius.circular(12),
// //                         boxShadow: [
// //                           BoxShadow(
// //                             color: Colors.black12,
// //                             blurRadius: 4,
// //                             offset: Offset(0, 2),
// //                           ),
// //                         ],
// //                       ),
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Column(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Icon(item.icon, size: 24, color: Colors.deepOrange),
// //                           const SizedBox(height: 6),
// //                           Text(
// //                             item.title,
// //                             textAlign: TextAlign.center,
// //                             style: TextStyle(fontSize: 10),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   );
// //                 },
// //               ),
// //               const SizedBox(height: 20),
// //               _buildBottomButtons(),
// //             ],
// //           ),
// //         ),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
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
// //     );
// //   }

// //   Widget _buildRaiseHandBanner(BuildContext context) {
// //     return Container(
// //       padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
// //       decoration: BoxDecoration(
// //         color: Theme.of(context).cardColor,
// //         borderRadius: BorderRadius.circular(16),
// //         boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
// //       ),
// //       child: Column(
// //         children: [
// //           Text(
// //             "Raise Hand For Church...",
// //             style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
// //           ),
// //           const SizedBox(height: 4),
// //           Text(
// //             "Get the churches connected more\nBring the awareness of online services",
// //             textAlign: TextAlign.center,
// //             style: TextStyle(fontSize: 11),
// //           ),
// //           const SizedBox(height: 8),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: const [
// //               Icon(Icons.arrow_back_ios, size: 16),
// //               Icon(Icons.arrow_forward_ios, size: 16),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildBottomButtons() {
// //     return Column(
// //       children: [
// //         Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //           children: [
// //             ElevatedButton(
// //                 onPressed: () {},
// //                 style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.deepOrange),
// //                 child: Text("Logout")),
// //             ElevatedButton(
// //                 onPressed: () {},
// //                 style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.deepOrange),
// //                 child: Text("Contact Us")),
// //           ],
// //         ),
// //         const SizedBox(height: 8),
// //         ElevatedButton(
// //           onPressed: () {},
// //           style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
// //           child: Text("Terms and Conditions"),
// //         ),
// //       ],
// //     );
// //   }
// // }

// // class _GridItem {
// //   final String title;
// //   final IconData icon;
// //   final String route;

// //   _GridItem(this.title, this.icon, this.route);
// // }
//----------------------old code---------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class HomePage extends StatelessWidget {
//   final List<_GridItem> gridItems = [
//     _GridItem("Church Locator", Icons.location_on, '/charch'),
//     _GridItem("Holy Bible Access", Icons.menu_book, '/holybible'),
//     _GridItem("Daily Manna", Icons.book, '/dailymanna'),
//     _GridItem("Prayer Requests", Icons.message, '/prayer'),
//     _GridItem("Songs Book", Icons.library_music, '/songbook'),
//     _GridItem("Videos", Icons.video_library, '/videos'),
//     _GridItem("Refer and Earn", Icons.card_giftcard, '/referrs'),
//     _GridItem("Donate", Icons.volunteer_activism, '/donation'),
//     _GridItem("Christian Matrimony", Icons.favorite, '/matrimony'),
//     _GridItem("Event", Icons.favorite, '/events'),
//     _GridItem("Christian Shopping", Icons.shopping_cart, '/shopping'),
//     _GridItem("Bible School", Icons.school, '/bibleSchool'),
//     _GridItem("Bible Quiz", Icons.quiz, '/bibleQuiz'),
//     _GridItem("Ask Bible TH", Icons.chat, '/askBibleTH'),
//     _GridItem("Kid’s Corner", Icons.child_care, '/kidscorner'),
//     _GridItem("Songs", Icons.music_note, '/songs'),
//     _GridItem("church", Icons.music_note, '/church'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Praise The Lord..."),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(30.0),
//           child: Column(
//             children: [
//               _buildRaiseHandBanner(context),
//               const SizedBox(height: 5),
//               GridView.builder(
//                 itemCount: gridItems.length,
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   mainAxisSpacing: 10,
//                   crossAxisSpacing: 10,
//                   childAspectRatio: 0.9,
//                 ),
//                 itemBuilder: (context, index) {
//                   final item = gridItems[index];
//                   return GestureDetector(
//                     onTap: () => Navigator.pushNamed(context, item.route),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Theme.of(context).cardColor,
//                         borderRadius: BorderRadius.circular(12),
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Colors.black12,
//                             blurRadius: 4,
//                             offset: Offset(0, 2),
//                           ),
//                         ],
//                       ),
//                       padding: const EdgeInsets.all(5.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(item.icon, size: 30, color: Colors.deepOrange),
//                           const SizedBox(height: 4),
//                           Text(
//                             item.title,
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(fontSize: 10),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
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
//                 'lib/assets/icons/solid_home.svg',
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

//   Widget _buildRaiseHandBanner(BuildContext context) {
//     return const RaiseHandCarousel();
//   }
// }

// class _GridItem {
//   final String title;
//   final IconData icon;
//   final String route;

//   _GridItem(this.title, this.icon, this.route);
// }

// // Carousel Widget
// class RaiseHandCarousel extends StatefulWidget {
//   const RaiseHandCarousel({Key? key}) : super(key: key);

//   @override
//   State<RaiseHandCarousel> createState() => _RaiseHandCarouselState();
// }

// class _RaiseHandCarouselState extends State<RaiseHandCarousel> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;

//   final List<Map<String, String>> carouselItems = [
//     {
//       "title": "Raise Hand For Church...",
//       "description":
//           "Get the churches connected more\nBring the awareness of online services",
//     },
//     {
//       "title": "Join the Community",
//       "description":
//           "Connect with others, stay updated,\nand be a part of something great.",
//     },
//     {
//       "title": "Support Your Church",
//       "description":
//           "Your involvement matters.\nTake part in online services and events.",
//     },
//   ];

//   void _nextPage() {
//     if (_currentPage < carouselItems.length - 1) {
//       _pageController.nextPage(
//           duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
//     }
//   }

//   void _prevPage() {
//     if (_currentPage > 0) {
//       _pageController.previousPage(
//           duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
//     }
//   }

//   Widget _buildIndicators() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(carouselItems.length, (index) {
//         return AnimatedContainer(
//           duration: const Duration(milliseconds: 300),
//           margin: const EdgeInsets.symmetric(horizontal: 4),
//           width: _currentPage == index ? 12 : 8,
//           height: _currentPage == index ? 12 : 8,
//           decoration: BoxDecoration(
//             color: _currentPage == index ? Colors.deepOrange : Colors.grey[400],
//             shape: BoxShape.circle,
//           ),
//         );
//       }),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 140,
//       decoration: BoxDecoration(
//         color: Theme.of(context).cardColor,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
//       ),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 36.0),
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: carouselItems.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPage = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 final item = carouselItems[index];
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       item['title']!,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       item['description']!,
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(fontSize: 11),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//           Positioned(
//             left: 8,
//             child: IconButton(
//               onPressed: _prevPage,
//               icon: const Icon(Icons.arrow_back_ios, size: 18),
//             ),
//           ),
//           Positioned(
//             right: 8,
//             child: IconButton(
//               onPressed: _nextPage,
//               icon: const Icon(Icons.arrow_forward_ios, size: 18),
//             ),
//           ),
//           Positioned(
//             bottom: 8,
//             child: _buildIndicators(),
//           ),
//         ],
//       ),
//     );
//   }
// }



//----------------old code--------------


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification.dart';
import 'holy_bible.dart';
import 'user.dart';
import 'comingsoon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? _hoveredIndex;
 int _selectedIndex = 0;

  final List<_GridItem> gridItems = [
    _GridItem("Church Location", Icons.location_on, '/charch'),
    _GridItem(
        "Holy Bible Access,Interactive study", Icons.menu_book, '/holybible'),
    _GridItem(
        "Daily Manna,Prayer,and Confessions", Icons.book, '/dailymanna'),
    _GridItem("Prayer Requests", Icons.message, '/prayer'),
    _GridItem("Songs Book", Icons.library_music, '/songbook'),
    _GridItem("Videos", Icons.video_library, '/videos'),
    _GridItem("Refer and Earn", Icons.card_giftcard, '/referrs'),
    _GridItem("Donate", Icons.volunteer_activism, '/donation'),
    _GridItem("Christian Matrimony", Icons.favorite, '/matrimony'),
    _GridItem("Event", Icons.event, '/events'),
    _GridItem("Christian Shopping", Icons.shopping_cart, '/shopping'),
    _GridItem("Bible School", Icons.school, '/bibleSchool'),
    _GridItem("Bible Quiz", Icons.quiz, '/bibleQuiz'),
    _GridItem("Ask Bible TH", Icons.chat, '/askBibleTH'),
    _GridItem("Kid’s Corner", Icons.child_care, '/kidscorner'),
    _GridItem("Songs", Icons.music_note, '/songs'),
    _GridItem("Add Church", Icons.account_balance, '/paster'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 0.0, // No expanded height to allow scrolling with content
            floating: false,
            pinned: true,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false, // Hide leading icon (back button)
            title: const Text(
              "Praise The Lord...",
              style: TextStyle(color: Colors.black),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  _buildRaiseHandBanner(context),
                  const SizedBox(height: 5),
                  GridView.builder(
                    itemCount: gridItems.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.9,
                    ),
                    itemBuilder: (context, index) {
                      final item = gridItems[index];
                      final isHovered = _hoveredIndex == index;

                      return MouseRegion(
                        onEnter: (_) {
                          setState(() => _hoveredIndex = index);
                        },
                        onExit: (_) {
                          setState(() => _hoveredIndex = null);
                        },
                        child: GestureDetector(
                          onTap: () {
                            if (item.title == 'Christian Matrimony') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ComingSoonPage(title: 'Christian Matrimony'),
                                ),
                              );
                             } else if (item.title == 'Bible Quiz') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ComingSoonPage(title: 'Bible Quize'),
      ),
    );
  } else if (item.title == 'Ask Bible TH') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ComingSoonPage(title: 'Ask Bibile TH'),
      ),
    );
  } else if (item.title == 'Christian Shopping') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ComingSoonPage(title: 'Christian Shopping'),
      ),
    );
  } 
  else if (item.title == 'Bible School') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ComingSoonPage(title: 'Bible School'),
      ),
    );
  } 
                            // Handle other navigation cases here
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              color: isHovered
                                  ? Colors.deepOrange.shade50
                                  : Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(item.icon, size: 30, color: Colors.deepOrange),
                                const SizedBox(height: 4),
                                Text(
                                  item.title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
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
                'lib/assets/icons/solid_home.svg',
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

  Widget _buildRaiseHandBanner(BuildContext context) {
    return const RaiseHandCarousel();
  }
}

class _GridItem {
  final String title;
  final IconData icon;
  final String route;

  _GridItem(this.title, this.icon, this.route);
}

class RaiseHandCarousel extends StatefulWidget {
  const RaiseHandCarousel({Key? key}) : super(key: key);

  @override
  State<RaiseHandCarousel> createState() => _RaiseHandCarouselState();
}

class _RaiseHandCarouselState extends State<RaiseHandCarousel> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> carouselItems = [
    {
      "title": "Raise Hand For Church...",
      "description":
          "Get the churches connected more\nBring the awareness of online services",
    },
    {
      "title": "Join the Community",
      "description":
          "Connect with others, stay updated,\nand be a part of something great.",
    },
    {
      "title": "Support Your Church",
      "description":
          "Your involvement matters.\nTake part in online services and events.",
    },
  ];

  void _nextPage() {
    if (_currentPage < carouselItems.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  void _prevPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  Widget _buildIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(carouselItems.length, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: _currentPage == index ? 12 : 8,
          height: _currentPage == index ? 12 : 8,
          decoration: BoxDecoration(
            color: _currentPage == index ? Colors.deepOrange : Colors.grey[400],
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            child: PageView.builder(
              controller: _pageController,
              itemCount: carouselItems.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                final item = carouselItems[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item['title']!,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item['description']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 11),
                    ),
                  ],
                );
              },
            ),
          ),
          Positioned(
            left: 8,
            child: IconButton(
              onPressed: _prevPage,
              icon: const Icon(Icons.arrow_back_ios, size: 18),
            ),
          ),
          Positioned(
            right: 8,
            child: IconButton(
              onPressed: _nextPage,
              icon: const Icon(Icons.arrow_forward_ios, size: 18),
            ),
          ),
          Positioned(
            bottom: 8,
            child: _buildIndicators(),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'notification.dart';
// import 'holy_bible.dart';
// import 'user.dart';
// import 'comingsoon.dart'; // <-- Added import

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int? _hoveredIndex;
//   int _selectedIndex = 0;

//   final List<_GridItem> gridItems = [
//     _GridItem("Church Location", Icons.location_on, '/charch'),
//     _GridItem("Holy Bible Access,Interactive study", Icons.menu_book, '/holybible'),
//     _GridItem("Daily Manna,Prayer,and Confessions", Icons.book, '/dailymanna'),
//     _GridItem("Prayer Requests", Icons.message, '/prayer'),
//     _GridItem("Songs Book", Icons.library_music, '/songbook'),
//     _GridItem("Videos", Icons.video_library, '/videos'),
//     _GridItem("Refer and Earn", Icons.card_giftcard, '/referrs'),
//     _GridItem("Donate", Icons.volunteer_activism, '/donation'),
//     _GridItem("Christian Matrimony", Icons.favorite, '/matrimony'),
//     _GridItem("Event", Icons.event, '/events'),
//     _GridItem("Christian Shopping", Icons.shopping_cart, '/shopping'),
//     _GridItem("Bible School", Icons.school, '/bibleSchool'),
//     _GridItem("Bible Quiz", Icons.quiz, '/bibleQuiz'),
//     _GridItem("Ask Bible TH", Icons.chat, '/askBibleTH'),
//     _GridItem("Kid’s Corner", Icons.child_care, '/kidscorner'),
//     _GridItem("Songs", Icons.music_note, '/songs'),
//     _GridItem("Add Church", Icons.account_balance, '/paster'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Praise The Lord..."),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(30.0),
//           child: Column(
//             children: [
//               _buildRaiseHandBanner(context),
//               const SizedBox(height: 5),
//               GridView.builder(
//                 itemCount: gridItems.length,
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   mainAxisSpacing: 10,
//                   crossAxisSpacing: 10,
//                   childAspectRatio: 0.9,
//                 ),
//                 itemBuilder: (context, index) {
//                   final item = gridItems[index];
//                   final isHovered = _hoveredIndex == index;

//                   return MouseRegion(
//                     onEnter: (_) {
//                       setState(() => _hoveredIndex = index);
//                     },
//                     onExit: (_) {
//                       setState(() => _hoveredIndex = null);
//                     },
//                     child: GestureDetector(
//                       onTap: () {
//                         if (item.route == '/matrimony') {
//                           // Open Coming Soon Page for Christian Matrimony
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => ComingSoonPage(title: 'Christian Matrimony'),
//                             ),
//                           );
//                         } else {
//                           // Open regular route for other items
//                           Navigator.pushNamed(context, item.route);
//                         }
//                       },
//                       child: AnimatedContainer(
//                         duration: const Duration(milliseconds: 200),
//                         decoration: BoxDecoration(
//                           color: isHovered
//                               ? Colors.deepOrange.shade50
//                               : Theme.of(context).cardColor,
//                           borderRadius: BorderRadius.circular(12),
//                           boxShadow: const [
//                             BoxShadow(
//                               color: Colors.black12,
//                               blurRadius: 4,
//                               offset: Offset(0, 2),
//                             ),
//                           ],
//                         ),
//                         padding: const EdgeInsets.all(5.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(item.icon, size: 30, color: Colors.deepOrange),
//                             const SizedBox(height: 4),
//                             Text(
//                               item.title,
//                               textAlign: TextAlign.center,
//                               style: const TextStyle(fontSize: 10),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
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
//               MaterialPageRoute(builder: (context) => ProfileCard()),
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
//                 'lib/assets/icons/solid_home.svg',
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
// Widget _buildRaiseHandBanner(BuildContext context) {
//   return RaiseHandCarousel(); // Remove const here
// }

// }
 

// class _GridItem {
//   final String title;
//   final IconData icon;
//   final String route;

//   _GridItem(this.title, this.icon, this.route);
// }
