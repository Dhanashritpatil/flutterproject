import 'package:flutter/material.dart';
import 'home_screen.dart';

class LanguageSelectionScreen extends StatelessWidget {
  final List<Map<String, String>> languages = [
    {'title': 'English', 'image': 'lib/assets/images/english.jpeg'},
    {'title': 'Hindi', 'image': 'lib/assets/images/hindi.jpeg'},
    {'title': 'Marathi', 'image': 'lib/assets/images/marathi.jpeg'},
  ];

  LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Holy Bible"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
         actions: [
          IconButton(
              icon: Icon(Icons.home_outlined), //SizedBox(width: 12),
              color: Colors.deepOrange,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => HomePage()),
                );
              })
      
       ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ListView.separated(
              itemCount: languages.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                return LanguageCard(
                  title: languages[index]['title']!,
                  imagePath: languages[index]['image']!,
                  onTap: () {
                    // Handle language selection
                  },
                  height: screenWidth * 0.4,
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class LanguageCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;
  final double height;

  const LanguageCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              imagePath,
              height: height,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
