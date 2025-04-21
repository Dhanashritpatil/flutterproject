import 'package:flutter/material.dart';

class ChurchLocatorScreens extends StatelessWidget {
  const ChurchLocatorScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Church Locator'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context); // or navigate to Home
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ChurchCard(
            image: 'lib/assets/images/Group_210.png',
            name: 'Good Shepherd Evangelical Church',
            location: 'Serilingampalle\nHYD, 500019',
          ),
          SizedBox(height: 16),
          ChurchCard(
            image: 'lib/assets/images/Group_211.png',
            name: 'Christ Gospel Church',
            location: 'Gulmohar Park\nHYD, 500041',
          ),
          SizedBox(height: 16),
          ChurchCard(
            image: 'lib/assets/images/Group_212.png',
            name: 'Good Shepherd Evangelical Church',
            location: 'Gulmohar Park\nHYD, 500041',
          ),
          // SizedBox(height: 16),
          // ChurchCard(
          //   image: 'assets/images/Group 212.png',
          //   name: 'Christ Gospel Church',
          //   location: 'Gulmohar Park\nHYD, 500041',
          // ),
        ],
      ),
    );
  }
}

class ChurchCard extends StatelessWidget {
  final String image;
  final String name;
  final String location;

  const ChurchCard({
    super.key,
    required this.image,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurpleAccent.withOpacity(0.2),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(Icons.bookmark, color: Colors.deepOrange),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
            child: Row(
              children: [
                const Icon(Icons.location_on,
                    color: Colors.deepOrange, size: 16),
                const SizedBox(width: 4),
                Expanded(child: Text(location)),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
