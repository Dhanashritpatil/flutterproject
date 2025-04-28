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

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screen/receipt.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'my_donation_screen.dart';

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
//             Text("Date: \${donation['date']}",
//                 style: const TextStyle(fontSize: 18)),
//             Text("Amount: \${donation['amount']}",
//                 style: const TextStyle(fontSize: 18)),
//             Text("ID: \${donation['id']}",
//                 style: const TextStyle(fontSize: 18)),
//             Text("Method: \${donation['method']}",
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
//   bool _isLoading = true;

//   int _selectedIndex = 0; // Initialize it with the first tab index

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

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 2), () {
//       setState(() {
//         _isLoading = false;
//       });
//     });
//   }

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
//                 donations[index]['amount'] = "₹ \${controller.text}";
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
//                   'amount': "₹ \${amountController.text}",
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
//         appBar: AppBar(
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: const Text('Donations'),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.refresh),
//               onPressed: () {
//                 setState(() {
//                   donations.shuffle();
//                 });
//               },
//             ),
//         PopupMenuButton<String>(
//   icon: const Icon(Icons.more_vert, color: Colors.black),
//   onSelected: (value) {
//     if (value == 'Download Receipt') {
//       Navigator.pushNamed(context, '/receipt', arguments: {
//         'amount': 100.00,
//       });
//     } else if (value == 'My Donations') {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (_) =>MyDonationsPage ()),
//       );
//     } else {
//       print("Selected: $value");
//     }
//   },
//   itemBuilder: (BuildContext context) {
//     return [
//       '1',
//       '2',
//       '3',
//       'Download Receipt',
//       'My Donations', // <-- Added "My Donations" option
//     ].map((String choice) {
//       return PopupMenuItem<String>(
//         value: choice,
//         child: Text(choice),
//       );
//     }).toList();
//   },
// )

//           ],
//         ),
//         body: _isLoading
//             ? ListView.builder(
//                 padding: const EdgeInsets.all(16),
//                 itemCount: 3,
//                 itemBuilder: (context, index) => SkeletonDonationCard(),
//               )
//             : ListView.builder(
//                 padding: const EdgeInsets.all(16),
//                 itemCount: donations.length,
//                 itemBuilder: (context, index) {
//                   final donation = donations[index];
//                   if (donation['hidden']) return const SizedBox.shrink();

//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (_) => DonationDetailsScreen(donation)),
//                       );
//                     },
//                     child: Container(
//                       margin: const EdgeInsets.only(bottom: 16),
//                       padding: const EdgeInsets.all(16),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(16),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.deepPurple.withOpacity(0.1),
//                             blurRadius: 10,
//                             offset: const Offset(0, 4),
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(donation['date'],
//                               style: const TextStyle(color: Colors.grey)),
//                           const SizedBox(height: 4),
//                           GestureDetector(
//                             onTap: () => _editAmount(context, index),
//                             child: Text(
//                               donation['amount'],
//                               style: const TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 18),
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           Row(
//                             children: [
//                               Text(donation['id'],
//                                   style: const TextStyle(color: Colors.grey)),
//                               const Spacer(),
//                               Text(donation['method'],
//                                   style: const TextStyle(color: Colors.grey)),
//                               const SizedBox(width: 4),
//                               const Icon(Icons.check_circle,
//                                   color: Colors.green, size: 18),
//                             ],
//                           ),
//                           const SizedBox(height: 8),
//                           GestureDetector(
//                             onTap: () => _toggleHide(index),
//                             child: const Text(
//                               'Hide',
//                               style: TextStyle(color: Colors.red),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//         backgroundColor: const Color(0xFFF8F8F8),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () => _addDonation(context),
//           child: const Icon(Icons.add),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           onTap: (index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           },
//           selectedItemColor: Colors.black,
//           unselectedItemColor: Colors.black54,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(
//               icon: Padding(
//                 padding: const EdgeInsets.only(top: 6.0),
//                 child: SvgPicture.asset(
//                   'lib/assets/icons/home_icon.svg',
//                   width: 20,
//                   height: 20,
//                   color: Colors.black,
//                 ),
//               ),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               icon: Padding(
//                 padding: const EdgeInsets.only(top: 6.0),
//                 child: SvgPicture.asset(
//                   'lib/assets/icons/favorite_icon.svg',
//                   width: 20,
//                   height: 20,
//                   color: Colors.black,
//                 ),
//               ),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               icon: Padding(
//                 padding: const EdgeInsets.only(top: 6.0),
//                 child: SvgPicture.asset(
//                   'lib/assets/icons/hallow_notification.svg',
//                   width: 20,
//                   height: 20,
//                   color: Colors.black,
//                 ),
//               ),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               icon: Padding(
//                 padding: const EdgeInsets.only(top: 6.0),
//                 child: SvgPicture.asset(
//                   'lib/assets/icons/user_icon.svg',
//                   width: 20,
//                   height: 20,
//                   color: Colors.black,
//                 ),
//               ),
//               label: '',
//             ),
//           ],
//         ));
//   }
// }

// class SkeletonDonationCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.deepPurple.withOpacity(0.1),
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SkeletonBox(width: 100, height: 16),
//           const SizedBox(height: 8),
//           SkeletonBox(width: 80, height: 20),
//           const SizedBox(height: 8),
//           Row(
//             children: [
//               SkeletonBox(width: 60, height: 16),
//               const Spacer(),
//               SkeletonBox(width: 60, height: 16),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SkeletonBox extends StatelessWidget {
//   final double width;
//   final double height;

//   const SkeletonBox({required this.width, required this.height});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height,
//       margin: const EdgeInsets.symmetric(vertical: 4),
//       decoration: BoxDecoration(
//         color: Colors.grey.shade300,
//         borderRadius: BorderRadius.circular(8),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'my_donation_screen.dart';

// class DonatePage extends StatelessWidget {
//   const DonatePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController amountController = TextEditingController();
//     final TextEditingController noteController = TextEditingController();

//     return Scaffold(
//      appBar: AppBar(
//   title: const Text('Donate'),
//   centerTitle: true,
//   leading: IconButton(
//     icon: const Icon(Icons.arrow_back),
//     onPressed: () => Navigator.pop(context),
//   ),
//   actions: [
//     PopupMenuButton<int>(
//       onSelected: (value) {
//         if (value == 1) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) =>  MyDonationsPage()),
//           );
//         } else if (value == 2) {
//           // Handle Option 2
//         } else if (value == 3) {
//           // Handle Option 3
//         }
//       },
//       itemBuilder: (context) => [
//         const PopupMenuItem(
//           value: 1,
//           child: Text('My Donation'),
//         ),
//         const PopupMenuItem(
//           value: 2,
//           child: Text('Option 2'),
//         ),
//         const PopupMenuItem(
//           value: 3,
//           child: Text('Option 3'),
//         ),
//       ],
//     ),
//   ],
// ),

//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Church Card
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.1),
//                     blurRadius: 10,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     'Class Aptent Church',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Nullam non arcu et fermentuma port church lacinia non elit. Pellentesque habitant morbi',
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     '\$2,500',
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 24),

//             // Payment Method
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Payment Method',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     // Handle edit payment
//                   },
//                   child: const Text(
//                     'edit',
//                     style: TextStyle(color: Colors.blue),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8),
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.1),
//                     blurRadius: 10,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: const [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Caspian Bellevedere',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(height: 4),
//                         Text('**** **** **** 1234'),
//                       ],
//                     ),
//                   ),
//                   Icon(Icons.credit_card, color: Colors.grey),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 24),

//             // Donation Amount
//             const Text(
//               'Donation Amount',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Row(
//               children: [
//                 _amountButton('\$100', Colors.orange),
//                 const SizedBox(width: 8),
//                 _amountButton('\$150', Colors.grey.shade200),
//                 const SizedBox(width: 8),
//                 _amountButton('\$200', Colors.grey.shade200),
//               ],
//             ),
//             const SizedBox(height: 8),
//             TextField(
//               controller: amountController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 hintText: 'Write the amount...',
//                 prefixIcon: const Icon(Icons.attach_money),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey.shade100,
//               ),
//             ),
//             const SizedBox(height: 24),

//             // Add Note
//             const Text(
//               'Add Note',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//             const SizedBox(height: 8),
//             TextField(
//               controller: noteController,
//               maxLines: 4,
//               decoration: InputDecoration(
//                 hintText: 'Write your note...',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey.shade100,
//               ),
//             ),
//             const SizedBox(height: 24),

//             // Donate Button
//             SizedBox(
//               width: double.infinity,
//               height: 50,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 onPressed: () {
//                   // Handle Donate
//                 },
//                 child: const Text(
//                   'Donate',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications_none),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: '',
//           ),
//         ],
//       ),
//       backgroundColor: const Color(0xFFF8F8F8),
//     );
//   }

//   // Reusable button widget for amount
//   Widget _amountButton(String text, Color bgColor) {
//     return Expanded(
//       child: Container(
//         height: 40,
//         decoration: BoxDecoration(
//           color: bgColor,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: bgColor == Colors.orange ? Colors.white : Colors.black,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'receipt.dart';
import 'my_donation_screen.dart';
import 'home.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification.dart';
import 'user.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final TextEditingController amountController = TextEditingController();
    final TextEditingController noteController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Donate'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          PopupMenuButton<int>(
            onSelected: (value) {
              if (value == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDonationsPage()),
                );
              } else if (value == 2) {
                // Handle Option 2
              } else if (value == 3) {
                // Handle Option 3
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text('My Donation'),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text('Option 2'),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text('Option 3'),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Church Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Class Aptent Church',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Nullam non arcu et fermentuma port church lacinia non elit. Pellentesque habitant morbi',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$2,500',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Payment Method
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Payment Method',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle edit payment
                  },
                  child: const Text(
                    'edit',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Caspian Bellevedere',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text('**** **** **** 1234'),
                      ],
                    ),
                  ),
                  Icon(Icons.credit_card, color: Colors.grey),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Donation Amount
            const Text(
              'Donation Amount',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                _amountButton('\$100', Colors.orange),
                const SizedBox(width: 8),
                _amountButton('\$150', Colors.grey.shade200),
                const SizedBox(width: 8),
                _amountButton('\$200', Colors.grey.shade200),
              ],
            ),
            const SizedBox(height: 8),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Write the amount...',
                prefixIcon: const Icon(Icons.attach_money),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
              ),
            ),
            const SizedBox(height: 24),

            // Add Note
            const Text(
              'Add Note',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: noteController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Write your note...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
              ),
            ),
            const SizedBox(height: 24),

            // Donate Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReceiptScreen()),
                  );
                },
                child: const Text(
                  'Donate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index == 2) {
            // Open Notification screen when bell is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NotificationScreen()),
            );
          }
          // Optionally handle other indices (Home, Favorites, Profile)
          else if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileCard()),
            );
          }
        },
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
                colorFilter: ColorFilter.mode(
                  IconTheme.of(context).color ?? Colors.black,
                  BlendMode.srcIn,
                ),
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
                colorFilter: ColorFilter.mode(
                  IconTheme.of(context).color ?? Colors.black,
                  BlendMode.srcIn,
                ),
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
                colorFilter: ColorFilter.mode(
                  IconTheme.of(context).color ?? Colors.black,
                  BlendMode.srcIn,
                ),
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
                colorFilter: ColorFilter.mode(
                  IconTheme.of(context).color ?? Colors.black,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  // Reusable button widget for amount
  Widget _amountButton(String text, Color bgColor) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: bgColor == Colors.orange ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
