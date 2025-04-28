import 'package:flutter/material.dart';

class MyDonationsPage extends StatelessWidget {
  final List<Map<String, dynamic>> myDonations = [
    {
      'date': 'Feb 1, 2025',
      'amount': 500.00,
      'id': '#123456',
      'method': 'UPI',
    },
    {
      'date': 'Feb 15, 2025',
      'amount': 1000.00,
      'id': '#123457',
      'method': 'Credit Card',
    },
    {
      'date': 'Mar 2, 2025',
      'amount': 750.00,
      'id': '#123458',
      'method': 'Debit Card',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Donations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: myDonations.isEmpty
          ? const Center(
              child: Text(
                'No donations yet!',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: myDonations.length,
              itemBuilder: (context, index) {
                final donation = myDonations[index];
                return GestureDetector(
                  onTap: () {
                    // Navigate to Receipt Page with donation data
                    Navigator.pushNamed(
                      context,
                      '/receipt',
                      arguments: {
                        'amount': donation['amount'],
                        'date': donation['date'],
                        'id': donation['id'],
                        'method': donation['method'],
                      },
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          donation['date'],
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "₹ ${donation['amount'].toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              donation['id'],
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const Spacer(),
                            Text(
                              donation['method'],
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      backgroundColor: const Color(0xFFF8F8F8),
    );
  }
}
