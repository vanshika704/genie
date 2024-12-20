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
  TimeOfDay _startTime = TimeOfDay(hour: 0, minute: 0); 
  TimeOfDay _endTime = TimeOfDay(hour: 0, minute: 0); 

  double _experience = 0; 
  List<bool> _availability = [false, false, false]; 
  List<String> _skills = [];
  final TextEditingController _skillController = TextEditingController();

  List<String> _selectedDays = [];  // Store selected days as a list of strings
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double fontSize = size.width > 600 ? 18 : 16;

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
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,  // Ensure background is black
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Provide details for ${widget.selectedService}',
                textAlign: TextAlign.center,
                style: GoogleFonts.oxanium(
                  fontSize: fontSize + 4,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),

              // Name Field
              _buildTextField(
                controller: _nameController,
                label: 'Your Name',
                inputType: TextInputType.text,
                fontSize: fontSize,
              ),
              const SizedBox(height: 20),

              // Contact Field
              _buildTextField(
                controller: _contactController,
                label: 'Contact Information',
                inputType: TextInputType.phone,
                fontSize: fontSize,
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
                activeColor: const Color.fromARGB(204, 51, 241, 255),
                inactiveColor: Colors.grey,
              ),
              const SizedBox(height: 20),

              // Availability Toggle Buttons (Morning, Afternoon, Evening)
             

              // Availability Days (Multi-select Days)
              _buildAvailabilityDays(fontSize),
              const SizedBox(height: 20),

              // Availability Hours (Dropdown for start and end times)
              _buildAvailabilityHours(fontSize),
              const SizedBox(height: 20),

              // Skills Tags
              Text(
                'Skills:',
                style: GoogleFonts.oxanium(color: Colors.white),
              ),
              _buildSkillsSection(),
              const SizedBox(height: 30),

              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: _onSubmit,
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

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required TextInputType inputType,
    required double fontSize,
  }) {
    return TextField(
      controller: controller,
      style: GoogleFonts.oxanium(color: Colors.white),
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.oxanium(color: Colors.white70),
        filled: true,
        fillColor: const Color.fromARGB(255, 92, 90, 90),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

 

  Widget _buildAvailabilityDays(double fontSize) {
    final daysOfWeek = [
      'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Available Days:',
          style: GoogleFonts.oxanium(color: Colors.white),
        ),
        const SizedBox(height: 10),
        // Multi-select approach for days
        Wrap(
          spacing: 8,
          children: daysOfWeek.map((day) {
            return ChoiceChip(
              label: Text(day, style: GoogleFonts.oxanium(color: Colors.white)),
              selected: _selectedDays.contains(day),
              onSelected: (selected) {
                setState(() {
                  if (selected) {
                    _selectedDays.add(day);
                  } else {
                    _selectedDays.remove(day);
                  }
                });
              },
              selectedColor: const Color.fromARGB(255, 80, 226, 221),
              backgroundColor: Colors.grey,
            );
          }).toList(),
        ),
      ],
    );
  }

 Widget _buildAvailabilityHours(double fontSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Available Hours:',
          style: GoogleFonts.oxanium(color: Colors.white),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              'From: ${_startTime.format(context)}',
              style: GoogleFonts.oxanium(color:  const Color.fromARGB(255, 51, 241, 255),),
            ),
            IconButton(
              icon: const Icon(Icons.access_time, color: Color.fromARGB(204, 255, 255, 255),),
              onPressed: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: _startTime,
                );
                if (selectedTime != null) {
                  setState(() {
                    _startTime = selectedTime;
                  });
                }
              },
            ),
            const SizedBox(width: 20),
            Text(
              'To: ${_endTime.format(context)}',
              style: GoogleFonts.oxanium(color:  const Color.fromARGB(255, 51, 241, 255),),
            ),
            IconButton(
              icon: const Icon(Icons.access_time, color:  Color.fromARGB(255, 255, 255, 255),),
              onPressed: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: _endTime,
                );
                if (selectedTime != null) {
                  setState(() {
                    _endTime = selectedTime;
                  });
                }
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSkillsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          spacing: 8,
          children: _skills
              .map(
                (skill) => Chip(
                  label: Text(skill, style: GoogleFonts.oxanium(color: Colors.white)),
                  backgroundColor: const Color.fromARGB(255, 92, 90, 90),
                  onDeleted: () {
                    setState(() {
                      _skills.remove(skill);
                    });
                  },
                ),
              )
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
      ],
    );
  }

  void _onSubmit() {
    if (_nameController.text.isEmpty ||
        _contactController.text.isEmpty ||
        _skills.isEmpty ||
        _selectedDays.isEmpty ||
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
  }
}
