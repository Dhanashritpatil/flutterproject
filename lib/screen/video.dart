// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class VideosPage extends StatelessWidget {
//   final List<VideoItem> videos = [
//     VideoItem("Cleansing all who want", "By Christ Gospel Church", 'assets/video1.jpg'),
//     VideoItem("Voice Of God", "Good Shepherd Evangelical Church", 'assets/video2.jpg'),
//     VideoItem("How to recognize when God Speaks", "By Christ Gospel Church", 'assets/video3.jpg'),
//     VideoItem("Who do you say this is?", "Good Shepherd Evangelical Church", 'assets/video4.jpg'),
//     VideoItem("There is Power in the name of Jesus", "By Christ Gospel Church", 'assets/video5.jpg'),
//     VideoItem("The Passion", "By Christ Gospel Church", 'assets/video6.jpg'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Videos"),
//         centerTitle: true,
//         leading: BackButton(),
//         actions: [
//           IconButton(icon: Icon(Icons.home), onPressed: () => Navigator.popUntil(context, (route) => route.isFirst)),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: [
//             _buildSearchBar(),
//             const SizedBox(height: 12),
//             Expanded(
//               child: GridView.builder(
//                 itemCount: videos.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 14,
//                   crossAxisSpacing: 14,
//                   childAspectRatio: 0.72,
//                 ),
//                 itemBuilder: (context, index) {
//                   final item = videos[index];
//                   return _buildVideoCard(context, item);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSearchBar() {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: "Search...",
//         prefixIcon: Icon(Icons.search),
//         suffixIcon: Icon(Icons.tune),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
//         filled: true,
//       ),
//     );
//   }

//   Widget _buildVideoCard(BuildContext context, VideoItem item) {
//     return GestureDetector(
//       onTap: () {
//         // Navigate to video player or detail page
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => VideoDetailPage(title: item.title)),
//         );
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: Theme.of(context).cardColor,
//           borderRadius: BorderRadius.circular(18),
//           boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
//                   child: Image.asset(
//                     item.thumbnail,
//                     height: 50,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned.fill(
//                   child: Center(
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 24,
//                       child: Icon(Icons.play_arrow, color: Colors.deepOrange, size: 28),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(item.title, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold)),
//                   SizedBox(height: 2),
//                   Text(item.subtitle, style: TextStyle(fontSize: 10, color: Colors.grey)),
//                   SizedBox(height: 4),
//                   Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
//                     decoration: BoxDecoration(
//                       color: Colors.deepOrange,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Text("open", style: TextStyle(color: Colors.white, fontSize: 10)),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class VideoItem {
//   final String title;
//   final String subtitle;
//   final String thumbnail;

//   VideoItem(this.title, this.subtitle, this.thumbnail);
// }

// class VideoDetailPage extends StatelessWidget {
//   final String title;

//   const VideoDetailPage({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: Center(
//         child: Icon(Icons.play_circle_fill, size: 100, color: Colors.deepOrange),
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
import 'package:shimmer/shimmer.dart'; // Add shimmer package

class VideosPage extends StatefulWidget {
  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  final List<VideoItem> videos = [
    VideoItem("Cleansing all who want", "By Christ Gospel Church", 'assets/video1.jpg'),
    VideoItem("Voice Of God", "Good Shepherd Evangelical Church", 'assets/video2.jpg'),
    VideoItem("How to recognize when God Speaks", "By Christ Gospel Church", 'assets/video3.jpg'),
    VideoItem("Who do you say this is?", "Good Shepherd Evangelical Church", 'assets/video4.jpg'),
    VideoItem("There is Power in the name of Jesus", "By Christ Gospel Church", 'assets/video5.jpg'),
    VideoItem("The Passion", "By Christ Gospel Church", 'assets/video6.jpg'),
  ];

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
        centerTitle: true,
        leading: BackButton(),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            _buildSearchBar(),
            const SizedBox(height: 12),
            Expanded(
              child: _isLoading ? _buildSkeletonLoader() : _buildVideoGrid(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search...",
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.tune),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
        filled: true,
      ),
    );
  }

  Widget _buildSkeletonLoader() {
    return GridView.builder(
      itemCount: 6, // Placeholder count
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        childAspectRatio: 0.72,
      ),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        );
      },
    );
  }

  Widget _buildVideoGrid() {
    return GridView.builder(
      itemCount: videos.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        childAspectRatio: 0.72,
      ),
      itemBuilder: (context, index) {
        final item = videos[index];
        return _buildVideoCard(context, item);
      },
    );
  }

  Widget _buildVideoCard(BuildContext context, VideoItem item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VideoDetailPage(title: item.title)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                  child: Image.asset(
                    item.thumbnail,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24,
                      child: Icon(Icons.play_arrow, color: Colors.deepOrange, size: 28),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 2),
                  Text(item.subtitle, style: TextStyle(fontSize: 10, color: Colors.grey)),
                  SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("open", style: TextStyle(color: Colors.white, fontSize: 10)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VideoItem {
  final String title;
  final String subtitle;
  final String thumbnail;

  VideoItem(this.title, this.subtitle, this.thumbnail);
}

class VideoDetailPage extends StatelessWidget {
  final String title;

  const VideoDetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Icon(Icons.play_circle_fill, size: 100, color: Colors.deepOrange),
      ),
    );
  }
}
