import 'package:flutter/material.dart';

class DailyMannaScreen extends StatefulWidget {
  const DailyMannaScreen({super.key});

  @override
  State<DailyMannaScreen> createState() => _DailyMannaScreenState();
}

class _DailyMannaScreenState extends State<DailyMannaScreen> {
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

  void _onCardTap(Map<String, dynamic> item) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => DailyMannaDetailScreen(item)),
    );
  }

  Future<void> _refreshList() async {
    setState(() {
      mannaItems.shuffle();
    });
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
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
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
              child: ListView.builder(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      item['likes'] += item['liked'] ? 1 : -1;
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
                                  child:
                                      const Icon(Icons.mail_outline, size: 20),
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
