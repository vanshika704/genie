import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'page1.dart'; // Replace with actual page1 file
import 'Signup_page.dart'; // Import the signup page

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 28, 28),
        title: Text(
          'Login',
          style: GoogleFonts.oxanium(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 29, 28, 28),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Image.asset(
                "assets/6333040-removebg-preview.png",
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 100),
              TextField(
                controller: _emailController,
                style: GoogleFonts.oxanium(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 92, 90, 90),
                  hintText: 'Email',
                  hintStyle: GoogleFonts.oxanium(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                style: GoogleFonts.oxanium(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 92, 90, 90),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.oxanium(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page1()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: const Color.fromARGB(255, 192, 192, 192),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: const Icon(
                  FontAwesomeIcons.envelope,
                  color: Color.fromARGB(255, 7, 7, 7),
                ),
                label: Text(
                  'Continue with Email',
                  style: GoogleFonts.oxanium(
                    color: const Color.fromARGB(255, 7, 7, 7),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: const Color.fromARGB(255, 192, 192, 192),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: const Icon(
                  FontAwesomeIcons.google,
                  color: Color.fromARGB(255, 7, 7, 7),
                ),
                label: Text(
                  'Continue with Google',
                  style: GoogleFonts.oxanium(
                    color: const Color.fromARGB(255, 7, 7, 7),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                },
                child: Text(
                  "Don't have an account? Signup",
                  style: GoogleFonts.oxanium(
                    fontSize: 16,
                    
                    color: const Color.fromARGB(255, 51, 241, 255),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
