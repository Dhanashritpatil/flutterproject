// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';


// class EditProfilePage extends StatefulWidget {
//   const EditProfilePage({super.key});

//   @override
//   State<EditProfilePage> createState() => _EditProfilePageState();
// }

// class _EditProfilePageState extends State<EditProfilePage> {
//   final TextEditingController nameController =
//       TextEditingController(text: 'Amy Young');
//   final TextEditingController phoneController =
//       TextEditingController(text: '+98 1245560090');
//   final TextEditingController emailController =
//       TextEditingController(text: 'amyoung@random.com');

//   String gender = 'Female';

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//      bottomNavigationBar: BottomNavigationBar(
//   currentIndex: 3, // Set this based on active screen (Edit Profile = index 3)
//   selectedItemColor: Colors.deepOrange,
//   unselectedItemColor: Colors.black,
//   showSelectedLabels: false,
//   showUnselectedLabels: false,
//   type: BottomNavigationBarType.fixed,
//   onTap: (index) {
//     // You can handle navigation here based on index
//     if (index == 0) {
//       Navigator.pushNamed(context, '/home');
//     } else if (index == 1) {
//       Navigator.pushNamed(context, '/favorites');
//     } else if (index == 2) {
//       Navigator.pushNamed(context, '/notifications');
//     } else if (index == 3) {
//       // Already on profile, maybe no action or pop
//     }
//   },
//   items: [
//     BottomNavigationBarItem(
//       icon: Padding(
//         padding: const EdgeInsets.only(top: 6.0),
//         child: SvgPicture.asset(
//           'lib/assets/icons/home_icon.svg',
//           width: 20,
//           height: 20,
//           color: Colors.black,
//         ),
//       ),
//       label: '',
//     ),
//     BottomNavigationBarItem(
//       icon: Padding(
//         padding: const EdgeInsets.only(top: 6.0),
//         child: SvgPicture.asset(
//           'lib/assets/icons/favorite_icon.svg',
//           width: 20,
//           height: 20,
//           color: Colors.black,
//         ),
//       ),
//       label: '',
//     ),
//     BottomNavigationBarItem(
//       icon: Padding(
//         padding: const EdgeInsets.only(top: 6.0),
//         child: SvgPicture.asset(
//           'lib/assets/icons/hallow_notification.svg',
//           width: 20,
//           height: 20,
//           color: Colors.black,
//         ),
//       ),
//       label: '',
//     ),
//     BottomNavigationBarItem(
//       icon: Padding(
//         padding: const EdgeInsets.only(top: 6.0),
//         child: SvgPicture.asset(
//           'lib/assets/icons/solid_user.svg',
//           width: 20,
//           height: 20,
//           color: Colors.deepOrange, // Highlight profile tab
//         ),
//       ),
//       label: '',
//     ),
//   ],
// )
//     )
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Top Curved Area
//             Stack(
//               children: [
//                 Container(
//                   height: size.height * 0.27,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                     color: Color(0xFFFFE3D3),
//                     borderRadius:
//                         BorderRadius.only(bottomLeft: Radius.circular(80)),
//                   ),
//                 ),
//                 Positioned(
//                   top: 60,
//                   left: 0,
//                   right: 0,
//                   child: Center(
//                     child: Text(
//                       'Edit Profile',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black87,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 100,
//                   left: size.width / 2 - 50,
//                   child: Column(
//                     children: [
//                       CircleAvatar(
//                         radius: 50,
//                         backgroundImage: AssetImage('lib/assets/images/user.jpg'),
//                       ),
//                       const SizedBox(height: 10),
//                       GestureDetector(
//                         onTap: () {
//                           // Open photo picker
//                         },
//                         child: const Icon(Icons.add_circle, size: 24),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 30),

//             // Name
//             buildLabel('Name'),
//             buildInputField(nameController),

//             // Gender
//             buildLabel('Gender'),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: DropdownButtonFormField<String>(
//                 value: gender,
//                 decoration: inputDecoration(),
//                 items: ['Male', 'Female', 'Other']
//                     .map((g) => DropdownMenuItem(value: g, child: Text(g)))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     gender = value!;
//                   });
//                 },
//               ),
//             ),

//             // Phone
//             buildLabel('Phone no.'),
//             buildInputField(phoneController, keyboardType: TextInputType.phone),

//             // Email
//             buildLabel('E-Mail'),
//             buildInputField(emailController, keyboardType: TextInputType.emailAddress),

//             const SizedBox(height: 20),

//             // Save Button
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.deepOrange,
//                   foregroundColor: Colors.white,
//                   minimumSize: const Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 onPressed: () {

//   // Optionally, you can validate and save data here
//   Navigator.pop(context); // This will navigate back to Profile 

//                 },
//                 child: const Text('SAVE'),
//               ),
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildLabel(String text) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Text(text,
//             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
//       ),
//     );
//   }

//   Widget buildInputField(TextEditingController controller,
//       {TextInputType keyboardType = TextInputType.text}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: TextFormField(
//         controller: controller,
//         keyboardType: keyboardType,
//         decoration: inputDecoration(),
//       ),
//     );
//   }

//   InputDecoration inputDecoration() {
//     return InputDecoration(
//       filled: true,
//       fillColor: Colors.grey[200],
//       border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification.dart';
import 'home.dart';
import 'user.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  int _selectedIndex = 0;
  final TextEditingController nameController =
      TextEditingController(text: 'Amy Young');
  final TextEditingController phoneController =
      TextEditingController(text: '+98 1245560090');
  final TextEditingController emailController =
      TextEditingController(text: 'amyoung@random.com');

  String gender = 'Female';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
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
              MaterialPageRoute(
                  builder: (context) => const NotificationScreen()),
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
              MaterialPageRoute(builder: (context) => ProfileScreens()),
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
                'lib/assets/icons/solid_user.svg',
                width: 20,
                height: 20,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Curved Area
            Stack(
              children: [
                Container(
                  height: size.height * 0.27,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFE3D3),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(80)),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: size.width / 2 - 50,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('lib/assets/images/user.jpg'),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          // Open photo picker
                        },
                        child: const Icon(Icons.add_circle, size: 24),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Name
            buildLabel('Name'),
            buildInputField(nameController),

            // Gender
            buildLabel('Gender'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DropdownButtonFormField<String>(
                value: gender,
                decoration: inputDecoration(),
                items: ['Male', 'Female', 'Other']
                    .map((g) => DropdownMenuItem(value: g, child: Text(g)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),
            ),

            // Phone
            buildLabel('Phone no.'),
            buildInputField(phoneController,
                keyboardType: TextInputType.phone),

            // Email
            buildLabel('E-Mail'),
            buildInputField(emailController,
                keyboardType: TextInputType.emailAddress),

            const SizedBox(height: 20),

            // Save Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Validate and save
                  Navigator.pop(context); // Return to Profile page
                },
                child: const Text('SAVE'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
      ),
    );
  }

  Widget buildInputField(TextEditingController controller,
      {TextInputType keyboardType = TextInputType.text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: inputDecoration(),
      ),
    );
  }

  InputDecoration inputDecoration() {
    return InputDecoration(
      filled: true,
      fillColor: Colors.grey[200],
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
}
