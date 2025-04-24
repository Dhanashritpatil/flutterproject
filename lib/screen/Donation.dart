// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screen/receipt.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// // This screen shows the details when a donation card is tapped
// class DonationDetailsScreen extends StatelessWidget {
//   final Map<String, dynamic> donation;
//   const DonationDetailsScreen(this.donation, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Donation Details")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Date: ${donation['date']}",
//                 style: const TextStyle(fontSize: 18)),
//             Text("Amount: ${donation['amount']}",
//                 style: const TextStyle(fontSize: 18)),
//             Text("ID: ${donation['id']}", style: const TextStyle(fontSize: 18)),
//             Text("Method: ${donation['method']}",
//                 style: const TextStyle(fontSize: 18)),
//             const SizedBox(height: 20),
//             const Icon(Icons.check_circle, color: Colors.green, size: 40),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DonationsScreen extends StatefulWidget {
//   @override
//   _DonationsScreenState createState() => _DonationsScreenState();
// }

// class _DonationsScreenState extends State<DonationsScreen> {
//   List<Map<String, dynamic>> donations = [
//     {
//       'date': 'Jan 9, 2025',
//       'amount': '₹ 500',
//       'id': '#192772',
//       'method': 'UPI',
//       'success': true,
//       'hidden': false,
//     },
//     {
//       'date': 'Jan 10, 2025',
//       'amount': '₹ 1000',
//       'id': '#192773',
//       'method': 'UPI',
//       'success': true,
//       'hidden': false,
//     },
//   ];

//   void _toggleHide(int index) {
//     setState(() {
//       donations[index]['hidden'] = !donations[index]['hidden'];
//     });
//   }

//   void _editAmount(BuildContext context, int index) {
//     TextEditingController controller = TextEditingController(
//         text: donations[index]['amount'].replaceAll('₹ ', ''));

//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: const Text("Edit Donation Amount"),
//         content: TextField(
//           controller: controller,
//           keyboardType: TextInputType.number,
//           decoration: const InputDecoration(prefixText: "₹ "),
//         ),
//         actions: [
//           TextButton(
//               onPressed: () => Navigator.pop(ctx), child: const Text("Cancel")),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 donations[index]['amount'] = "₹ ${controller.text}";
//               });
//               Navigator.pop(ctx);
//             },
//             child: const Text("Save"),
//           ),
//         ],
//       ),
//     );
//   }

//   void _addDonation(BuildContext context) {
//     final TextEditingController dateController = TextEditingController();
//     final TextEditingController amountController = TextEditingController();
//     final TextEditingController idController = TextEditingController();
//     final TextEditingController methodController =
//         TextEditingController(text: 'UPI');

//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: const Text("Add Donation"),
//         content: SingleChildScrollView(
//           child: Column(
//             children: [
//               TextField(
//                 controller: dateController,
//                 decoration: const InputDecoration(
//                     labelText: "Date (e.g. Jan 15, 2025)"),
//               ),
//               TextField(
//                 controller: amountController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(labelText: "Amount (₹)"),
//               ),
//               TextField(
//                 controller: idController,
//                 decoration: const InputDecoration(
//                     labelText: "Donation ID (e.g. #192774)"),
//               ),
//               TextField(
//                 controller: methodController,
//                 decoration:
//                     const InputDecoration(labelText: "Method (e.g. UPI)"),
//               ),
//             ],
//           ),
//         ),
//         actions: [
//           TextButton(
//               onPressed: () => Navigator.pop(ctx), child: const Text("Cancel")),
//           ElevatedButton(
//             onPressed: () {
//               if (dateController.text.isEmpty ||
//                   amountController.text.isEmpty ||
//                   idController.text.isEmpty ||
//                   methodController.text.isEmpty) return;

//               setState(() {
//                 donations.add({
//                   'date': dateController.text,
//                   'amount': "₹ ${amountController.text}",
//                   'id': idController.text,
//                   'method': methodController.text,
//                   'success': true,
//                   'hidden': false,
//                 });
//               });
//               Navigator.pop(ctx);
//             },
//             child: const Text("Add"),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Go back
//           },
//         ),
//         title: const Text('Donations'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: () {
//               setState(() {
//                 donations.shuffle(); // Simulate refresh
//               });
//             },
//           ),
//           IconButton(
//               icon: const Icon(Icons.more_vert),
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (_) => ReceiptScreen()),
//                 );
//               }),
//           PopupMenuButton<String>(
//             icon: Icon(Icons.more_vert, color: Colors.black),
//             onSelected: (value) => print("Selected: $value"),
//             itemBuilder: (BuildContext context) {
//               return ['1', '2', '3'].map((String choice) {
//                 return PopupMenuItem<String>(
//                   value: choice,
//                   child: Text(choice),
//                 );
//               }).toList();
//             },
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: donations.length,
//         itemBuilder: (context, index) {
//           final donation = donations[index];
//           if (donation['hidden']) return const SizedBox.shrink();

//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (_) => DonationDetailsScreen(donation)),
//               );
//             },
//             child: Container(
//               margin: const EdgeInsets.only(bottom: 16),
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.deepPurple.withOpacity(0.1),
//                     blurRadius: 10,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(donation['date'],
//                       style: const TextStyle(color: Colors.grey)),
//                   const SizedBox(height: 4),
//                   GestureDetector(
//                     onTap: () => _editAmount(context, index),
//                     child: Text(
//                       donation['amount'],
//                       style: const TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Row(
//                     children: [
//                       Text(donation['id'],
//                           style: const TextStyle(color: Colors.grey)),
//                       const Spacer(),
//                       Text(donation['method'],
//                           style: const TextStyle(color: Colors.grey)),
//                       const SizedBox(width: 4),
//                       const Icon(Icons.check_circle,
//                           color: Colors.green, size: 18),
//                     ],
//                   ),
//                   const SizedBox(height: 8),
//                   GestureDetector(
//                     onTap: () => _toggleHide(index),
//                     child: const Text(
//                       'Hide',
//                       style: TextStyle(color: Colors.red),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//       backgroundColor: const Color(0xFFF8F8F8),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _addDonation(context),
//         child: const Icon(Icons.add),
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
import 'package:flutter_application_1/screen/receipt.dart';
import 'package:flutter_svg/flutter_svg.dart';

// This screen shows the details when a donation card is tapped
class DonationDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> donation;
  const DonationDetailsScreen(this.donation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Donation Details")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Date: \${donation['date']}",
                style: const TextStyle(fontSize: 18)),
            Text("Amount: \${donation['amount']}",
                style: const TextStyle(fontSize: 18)),
            Text("ID: \${donation['id']}", style: const TextStyle(fontSize: 18)),
            Text("Method: \${donation['method']}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            const Icon(Icons.check_circle, color: Colors.green, size: 40),
          ],
        ),
      ),
    );
  }
}

class DonationsScreen extends StatefulWidget {
  @override
  _DonationsScreenState createState() => _DonationsScreenState();
}

class _DonationsScreenState extends State<DonationsScreen> {
  bool _isLoading = true;

  List<Map<String, dynamic>> donations = [
    {
      'date': 'Jan 9, 2025',
      'amount': '₹ 500',
      'id': '#192772',
      'method': 'UPI',
      'success': true,
      'hidden': false,
    },
    {
      'date': 'Jan 10, 2025',
      'amount': '₹ 1000',
      'id': '#192773',
      'method': 'UPI',
      'success': true,
      'hidden': false,
    },
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  void _toggleHide(int index) {
    setState(() {
      donations[index]['hidden'] = !donations[index]['hidden'];
    });
  }

  void _editAmount(BuildContext context, int index) {
    TextEditingController controller = TextEditingController(
        text: donations[index]['amount'].replaceAll('₹ ', ''));

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Edit Donation Amount"),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(prefixText: "₹ "),
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx), child: const Text("Cancel")),
          ElevatedButton(
            onPressed: () {
              setState(() {
                donations[index]['amount'] = "₹ \${controller.text}";
              });
              Navigator.pop(ctx);
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  void _addDonation(BuildContext context) {
    final TextEditingController dateController = TextEditingController();
    final TextEditingController amountController = TextEditingController();
    final TextEditingController idController = TextEditingController();
    final TextEditingController methodController =
        TextEditingController(text: 'UPI');

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Add Donation"),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: dateController,
                decoration: const InputDecoration(
                    labelText: "Date (e.g. Jan 15, 2025)"),
              ),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Amount (₹)"),
              ),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                    labelText: "Donation ID (e.g. #192774)"),
              ),
              TextField(
                controller: methodController,
                decoration:
                    const InputDecoration(labelText: "Method (e.g. UPI)"),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx), child: const Text("Cancel")),
          ElevatedButton(
            onPressed: () {
              if (dateController.text.isEmpty ||
                  amountController.text.isEmpty ||
                  idController.text.isEmpty ||
                  methodController.text.isEmpty) return;

              setState(() {
                donations.add({
                  'date': dateController.text,
                  'amount': "₹ \${amountController.text}",
                  'id': idController.text,
                  'method': methodController.text,
                  'success': true,
                  'hidden': false,
                });
              });
              Navigator.pop(ctx);
            },
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Donations'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                donations.shuffle();
              });
            },
          ),
          IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => ReceiptScreen()),
                );
              }),
        ],
      ),
      body: _isLoading
          ? ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: 3,
              itemBuilder: (context, index) => SkeletonDonationCard(),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: donations.length,
              itemBuilder: (context, index) {
                final donation = donations[index];
                if (donation['hidden']) return const SizedBox.shrink();

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DonationDetailsScreen(donation)),
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
                        Text(donation['date'],
                            style: const TextStyle(color: Colors.grey)),
                        const SizedBox(height: 4),
                        GestureDetector(
                          onTap: () => _editAmount(context, index),
                          child: Text(
                            donation['amount'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(donation['id'],
                                style: const TextStyle(color: Colors.grey)),
                            const Spacer(),
                            Text(donation['method'],
                                style: const TextStyle(color: Colors.grey)),
                            const SizedBox(width: 4),
                            const Icon(Icons.check_circle,
                                color: Colors.green, size: 18),
                          ],
                        ),
                        const SizedBox(height: 8),
                        GestureDetector(
                          onTap: () => _toggleHide(index),
                          child: const Text(
                            'Hide',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      backgroundColor: const Color(0xFFF8F8F8),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addDonation(context),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
                'lib/assets/icons/home_icon.svg',
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
}

class SkeletonDonationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          SkeletonBox(width: 100, height: 16),
          const SizedBox(height: 8),
          SkeletonBox(width: 80, height: 20),
          const SizedBox(height: 8),
          Row(
            children: [
              SkeletonBox(width: 60, height: 16),
              const Spacer(),
              SkeletonBox(width: 60, height: 16),
            ],
          ),
        ],
      ),
    );
  }
}

class SkeletonBox extends StatelessWidget {
  final double width;
  final double height;

  const SkeletonBox({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
