import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notification'),
        leading: const Icon(Icons.arrow_back),
        actions: const [Icon(Icons.home_outlined), SizedBox(width: 12)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            _SearchBar(),
            SizedBox(height: 16),
            _PostInputCard(),
            SizedBox(height: 24),
            _MessageHeader(),
            SizedBox(height: 12),
            _MessageCard(
              username: 'Joel Raj',
              time: '4 mins ago',
              message:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque libero eros...',
              imageUrl: 'assets/images/user1.jpg',
              likes: 25,
              comments: 13,
            ),
            SizedBox(height: 12),
            _MessageCard(
              username: 'Lara Croft',
              time: '32 mins ago',
              message:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque libero eros...',
              imageUrl: 'assets/images/user2.jpg',
              likes: 0,
              comments: 0,
            ),
          ],
        ),
      ),
    );
  }
}

// === WIDGETS BELOW ===

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(12),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
        const SizedBox(width: 8),
        IconButton(icon: const Icon(Icons.filter_list), onPressed: () {}),
        IconButton(icon: const Icon(Icons.sort), onPressed: () {}),
      ],
    );
  }
}

class _PostInputCard extends StatelessWidget {
  const _PostInputCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
      ),
      child: Row(
        children: [
          const Icon(Icons.person, color: Colors.orange),
          const SizedBox(width: 12),
          const Expanded(child: Text("Write a post...")),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.orange),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _MessageHeader extends StatelessWidget {
  const _MessageHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Latest Messages', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Icon(Icons.filter_list),
      ],
    );
  }
}

class _MessageCard extends StatelessWidget {
  final String username;
  final String time;
  final String message;
  final String imageUrl;
  final int likes;
  final int comments;

  const _MessageCard({
    required this.username,
    required this.time,
    required this.message,
    required this.imageUrl,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(imageUrl)),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(time, style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            const SizedBox(height: 10),
            Text(message),
            const Divider(height: 20),
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.orange.shade400, size: 20),
                const SizedBox(width: 4),
                Text('$likes Likes'),
                const SizedBox(width: 20),
                const Icon(Icons.comment, size: 18),
                const SizedBox(width: 4),
                Text('$comments Comments'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
