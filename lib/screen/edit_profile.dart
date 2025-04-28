import 'package:flutter/material.dart';
import 'user.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  // Controllers to capture input
  TextEditingController nameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initial values (these could come from a user profile database or API)
    nameController.text = "Amy Young";
    genderController.text = "Female";
    phoneController.text = "+98 1245560090";
    emailController.text = "amyoung@random.com";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          children: [
            // Profile Picture
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile_picture.png'),
                ),
                IconButton(
                  icon: Icon(Icons.add_circle, color: Colors.deepOrangeAccent, size: 30),
                  onPressed: () {
                    // Handle profile picture change
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Edit Form
            buildTextField("Name", nameController),
            const SizedBox(height: 16),
            buildTextField("Gender", genderController, isEditable: false),
            const SizedBox(height: 16),
            buildTextField("Phone no.", phoneController),
            const SizedBox(height: 16),
            buildTextField("E-Mail", emailController),
            const SizedBox(height: 30),
            // Save Button
            ElevatedButton(
              onPressed: () {
                // Pass updated data back to user page
                Navigator.pop(context, {
                  'name': nameController.text,
                  'gender': genderController.text,
                  'phone': phoneController.text,
                  'email': emailController.text,
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "SAVE",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller, {bool isEditable = true}) {
    return TextField(
      controller: controller,
      enabled: isEditable,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}


// Usage Example:
// Add the following code in the user page to capture saved data:
