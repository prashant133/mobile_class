import 'package:batch_30a/model/student_details.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

enum City { newyork, california, sydney, berlin, paris }

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  late StudentDetails studentDetails;
  Gender? _selectedGender;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final ageController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    firstNameController.dispose();
    lastNameController.dispose();
    ageController.dispose();
    addressController.dispose();
    cityController.dispose();
    super.dispose();
  }

  void saveStudent() {
    studentDetails = StudentDetails();
    setState(() {
      studentDetails.saveStudent(firstNameController.text);
    });
  }

  final myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(primary: Colors.green.shade500),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Student Details"),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(9),
                    hintText: 'Enter your first name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your first name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(9),
                    hintText: 'Enter your Last name',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(9),
                    hintText: 'Enter your Age',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select a gender",
                  ),
                ),
                RadioListTile<Gender>(
                  title: const Text('Male'),
                  value: Gender.male,
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(
                      () {
                        _selectedGender = value;
                      },
                    );
                  },
                ),
                RadioListTile<Gender>(
                  title: const Text('Female'),
                  value: Gender.female,
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(
                      () {
                        _selectedGender = value;
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(9),
                    hintText: 'Enter your Address',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                DropdownButtonFormField<City>(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    labelText: "Select a city",
                    border: const OutlineInputBorder(),
                  ),
                  items: City.values.map((City city) {
                    return DropdownMenuItem<City>(
                      value: city,
                      child: Text(city.toString().split('.').last),
                    );
                  }).toList(),
                  onChanged: (City? selectedCity) {
                    // Handle selected city
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      null;
                    },
                    child: const Text(
                      "Save Student",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        print('this is test');
                      }
                    },
                    child: const Text(
                      "Display Student",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
