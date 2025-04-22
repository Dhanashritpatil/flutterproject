import 'package:flutter/material.dart';
import 'home_screen.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Events',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const _SearchBar(),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  _DateSection(date: '17 September'),
                  _EventItem(title: 'Event name', time: '09:30 - 10:00'),
                  _EventItem(title: 'Event name', time: '10:00 - 10:30'),
                  _EventItem(title: 'Event name', time: '11:00 - 11:40'),
                  _DateSection(date: '21 September'),
                  _EventItem(title: 'Event name', time: '09:30 - 10:00'),
                  _EventItem(title: 'Event name', time: '10:00 - 10:30'),
                  _EventItem(title: 'Event name', time: '11:00 - 11:40'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search...",
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
        const SizedBox(width: 10),
        IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
      ],
    );
  }
}

class _DateSection extends StatelessWidget {
  final String date;
  const _DateSection({required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(date,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          const Text('Morning', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class _EventItem extends StatelessWidget {
  final String title;
  final String time;

  const _EventItem({required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.orange.shade100)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(time),
                    const SizedBox(width: 8),
                    const Icon(Icons.access_time, size: 16, color: Colors.red),
                    const SizedBox(width: 4),
                    const Icon(Icons.notifications_none, size: 16),
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            ),
            child: const Text("Open"),
          ),
        ],
      ),
    );
  }
}
