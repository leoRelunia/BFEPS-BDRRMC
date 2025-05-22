import 'package:bfeps_bdrrmc/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // For JSON encoding/decoding
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required String userName});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true; // 👁️ Controls password visibility

  void _validateLogin() async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter both username and password')),
      );
      return;
    }

    try {
      final response = await http.post(
        Uri.parse('http://localhost/BFEPS-BDRRMC-main/BFEPS-BDRRMC-main/api/login.php'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'usr_username': username,
          'usr_password': password,
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['status'] == 'success') {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('username', username);
          await prefs.setString('position', data['data']['position']);

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const DashboardLayout(userName: ''),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(data['message'] ?? 'Invalid login')),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Server error, please try again later')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Network error: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 600;

          return Center(
            child: isWide
                ? Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'assets/images/loginphoto.png',
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: _buildForm(),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'assets/loginlogo.png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 30),
                      _buildForm(),
                    ],
                  ),
          );
        },
      ),
    );
  }

  Widget _buildForm() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 292,
            height: 43,
            child: TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              style: const TextStyle(fontSize: 13),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 292,
            height: 43,
            child: TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
              style: const TextStyle(fontSize: 13),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 292,
            height: 43,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5576F5),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: _validateLogin,
              child: const Text('Login', style: TextStyle(fontSize: 13)),
            ),
          ),
        ],
      ),
    );
  }
}
