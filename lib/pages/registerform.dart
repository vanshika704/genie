import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceRegistrationForm extends StatefulWidget {
  final String selectedService;

  const ServiceRegistrationForm({Key? key, required this.selectedService}) : super(key: key);

  @override
  State<ServiceRegistrationForm> createState() => _ServiceRegistrationFormState();
}

class _ServiceRegistrationFormState extends State<ServiceRegistrationForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();


  double _experience = 0; // Slider for years of experience
  List<bool> _availability = [false, false, false]; // Toggle buttons for availability
  List<String> _skills = []; // List of added skills
  final TextEditingController _skillController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 600 ? 18 : 16;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 28, 28),
        title: Text(
          'Register for ${widget.selectedService}',
          style: GoogleFonts.oxanium(
            fontSize: fontSize + 4,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 29, 28, 28),
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Provide details for ${widget.selectedService}',
                style: GoogleFonts.oxanium(
                  fontSize: fontSize + 4,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Name Field
              TextField(
                controller: _nameController,
                style: GoogleFonts.oxanium(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  labelStyle: GoogleFonts.oxanium(color: Colors.white70),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 92, 90, 90),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Contact Field
              TextField(
                controller: _contactController,
                style: GoogleFonts.oxanium(color: Colors.white),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Contact Information',
                  labelStyle: GoogleFonts.oxanium(color: Colors.white70),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 92, 90, 90),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Experience Slider
              Text(
                'Years of Experience: ${_experience.toInt()} years',
                style: GoogleFonts.oxanium(color: Colors.white),
              ),
              Slider(
                value: _experience,
                onChanged: (value) {
                  setState(() {
                    _experience = value;
                  });
                },
                min: 0,
                max: 30,
                divisions: 30,
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
              ),
              const SizedBox(height: 20),

              // Availability Toggle Buttons
              Text(
                'Availability:',
                style: GoogleFonts.oxanium(color: Colors.white),
              ),
              const SizedBox(height: 10),
              ToggleButtons(
                isSelected: _availability,
                onPressed: (index) {
                  setState(() {
                    _availability[index] = !_availability[index];
                  });
                },
                borderRadius: BorderRadius.circular(10),
                selectedColor: Colors.white,
                fillColor: Colors.green,
                color: Colors.white70,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Morning', style: GoogleFonts.oxanium(fontSize: fontSize)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Afternoon', style: GoogleFonts.oxanium(fontSize: fontSize)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Evening', style: GoogleFonts.oxanium(fontSize: fontSize)),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Skills Tags
              Text(
                'Skills:',
                style: GoogleFonts.oxanium(color: Colors.white),
              ),
              Wrap(
                spacing: 8,
                children: _skills
                    .map((skill) => Chip(
                          label: Text(
                            skill,
                            style: GoogleFonts.oxanium(color: Colors.white),
                          ),
                          backgroundColor: const Color.fromARGB(255, 92, 90, 90),
                          onDeleted: () {
                            setState(() {
                              _skills.remove(skill);
                            });
                          },
                        ))
                    .toList(),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _skillController,
                style: GoogleFonts.oxanium(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Add a skill',
                  hintStyle: GoogleFonts.oxanium(color: Colors.white70),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 92, 90, 90),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.add, color: Colors.white),
                    onPressed: () {
                      if (_skillController.text.isNotEmpty) {
                        setState(() {
                          _skills.add(_skillController.text);
                          _skillController.clear();
                        });
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_nameController.text.isEmpty ||
                        _contactController.text.isEmpty ||
                        _skills.isEmpty ||
                        !_availability.contains(true)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please fill all fields'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Service Registered Successfully'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: const Color.fromARGB(255, 192, 192, 192),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Submit',
                    style: GoogleFonts.oxanium(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 29, 28, 28),
                    ),
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
