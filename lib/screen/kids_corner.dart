import 'package:flutter/material.dart';
import 'home_screen.dart';

class KidsCornerScreen extends StatefulWidget {
  const KidsCornerScreen({super.key});

  @override
  State<KidsCornerScreen> createState() => _KidsCornerScreenState();
}

class _KidsCornerScreenState extends State<KidsCornerScreen> {
  final List<Map<String, String>> items = [
    {
      'title': 'Sunday Schools',
      'desc':
          'Find all the sunday schools near your locality Lorem ipsum dolor sit amet.',
      'image': 'lib/assets/images/home.png',
    },
    {
      'title': 'Vacation Bible School',
      'desc':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et velit ut purus lobortis facilisis in vitae libero.',
      'image': 'lib/assets/images/kid_drawing.png',
    },
    {
      'title': 'Children Songs',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'image': 'lib/assets/images/kids_singing.png',
    },
    {
      'title': 'Worksheets',
      'desc':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et velit ut purus.',
      'image': 'lib/assets/images/group.png',
    },
  ];

  void _onCardTap(Map<String, String> item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => KidsDetailScreen(item),
      ),
    );
  }

  void _refresh() {
    setState(() {
      items.shuffle(); // simulate refresh
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Kids Corner'),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.deepOrange),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {
                    // filter logic
                  },
                ),
                hintText: 'Search...',
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
              onRefresh: () async => _refresh(),
              child: ListView.builder(
                itemCount: items.length,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return GestureDetector(
                    onTap: () => _onCardTap(item),
                    child: Container(
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
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['title']!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  item['desc']!,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 12),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              item['image']!,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Detail page when a card is tapped
class KidsDetailScreen extends StatelessWidget {
  final Map<String, String> item;
  const KidsDetailScreen(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item['title']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(item['image']!, height: 200),
            const SizedBox(height: 20),
            Text(
              item['desc']!,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
