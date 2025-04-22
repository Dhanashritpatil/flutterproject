import 'package:flutter/material.dart';
import 'church_locatoe.dart';
import 'recpite.dart';
import 'holy_bible.dart';
import 'daily_mana_screen.dart';
import 'Donation.dart';
import 'kids_corner.dart';
import 'prayer_request.dart';
import 'refer&earn.dart';
import 'songs_book.dart';
import 'church.dart';
import 'songs.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.orange, useMaterial3: true),
      home: const AuthScreen(),
    );
  }
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;
  final TextEditingController emailController = TextEditingController(
    text: 'Demo',
  );
  final TextEditingController passwordController = TextEditingController(
    text: '123456',
  );
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  String userType = 'Basic User';
  bool passwordVisible = false;
  bool confirmPasswordVisible = false;

  void handleLogin() {
    final email = emailController.text;
    final password = passwordController.text;

    if (email == 'Demo' && password == '123456') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid credentials!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFFE5B4),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              constraints: const BoxConstraints(maxWidth: 400),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.orange.shade700),
                            ),
                            backgroundColor:
                                isLogin ? Colors.orange : Colors.white,
                          ),
                          onPressed: () => setState(() => isLogin = true),
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: isLogin
                                  ? Colors.white
                                  : Colors.orange.shade700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.orange.shade700),
                            ),
                            backgroundColor:
                                isLogin ? Colors.white : Colors.orange,
                          ),
                          onPressed: () => setState(() => isLogin = false),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: isLogin
                                  ? Colors.orange.shade700
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  if (!isLogin) ...[
                    _buildTextField(fullNameController, 'Enter full name'),
                    const SizedBox(height: 10),
                    _buildTextField(phoneController, 'Enter phone number'),
                    const SizedBox(height: 10),
                  ],
                  _buildTextField(
                    emailController,
                    isLogin ? 'Enter email or phone number' : 'Enter email',
                  ),
                  const SizedBox(height: 10),
                  _buildPasswordField(
                    passwordController,
                    'Password',
                    passwordVisible,
                    () {
                      setState(() => passwordVisible = !passwordVisible);
                    },
                  ),
                  const SizedBox(height: 10),
                  if (!isLogin)
                    _buildPasswordField(
                      confirmPasswordController,
                      'Confirm Password',
                      confirmPasswordVisible,
                      () {
                        setState(
                          () =>
                              confirmPasswordVisible = !confirmPasswordVisible,
                        );
                      },
                    ),
                  if (!isLogin) ...[
                    const SizedBox(height: 10),
                    const Text('Select user type'),
                    DropdownButton<String>(
                      isExpanded: true,
                      value: userType,
                      onChanged: (String? newValue) {
                        setState(() => userType = newValue!);
                      },
                      items: <String>[
                        'Basic User',
                        'Admin',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      if (isLogin) {
                        handleLogin();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Registration is currently a mock action.',
                            ),
                          ),
                        );
                      }
                    },
                    child: Text(isLogin ? 'Log In' : 'Sign Up'),
                  ),
                  if (isLogin)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Forgot Password?'),
                        ),
                      ),
                    ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('OR'),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.g_mobiledata, size: 32),
                      Icon(Icons.facebook, size: 28),
                      Icon(Icons.alternate_email, size: 26),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.grey[100],
      ),
    );
  }

  Widget _buildPasswordField(
    TextEditingController controller,
    String hint,
    bool visible,
    VoidCallback toggleVisibility,
  ) {
    return TextField(
      controller: controller,
      obscureText: !visible,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.grey[100],
        suffixIcon: IconButton(
          icon: Icon(visible ? Icons.visibility : Icons.visibility_off),
          onPressed: toggleVisibility,
        ),
      ),
    );
  }
}
