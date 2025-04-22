import 'package:flutter/material.dart';
import 'home_screen.dart';

class ChurchDetailPage extends StatelessWidget {
  const ChurchDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: false,
          title: const Text(""),
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
      
        
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: TabBar(
              indicatorColor: Colors.orange,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 2,
              tabs: [
                Tab(text: 'About'),
                Tab(text: 'Preaching'),
                Tab(text: 'Media'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildAboutTab(),
            Center(child: Text("Preaching Content")),
            Center(child: Text("Media Content")),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutTab() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque libero eros, efficitur eu convallis eu, sollicitudin eu ipsum. Donec blandit facilisis eros, sed consectetur nunc ullamcorper et. Vestibulum feugiat pulvinar tortor, vel laoreet eros finibus non. Suspendisse facilisis vehicula tempus. In sed placerat risus. Mauris bibendum massa in interdum sollicitudin. Mauris dignissim eleifend dapibus.',
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
          const SizedBox(height: 20),

          // Tags Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTagButton('Hours'),
              _buildTagButton('✝✝✝✝✝ 3.7'),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTagButton(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.orangeAccent.withOpacity(0.4),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
