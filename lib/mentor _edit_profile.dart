import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class EditBioScreen extends StatefulWidget {
  @override
  _EditBioScreenState createState() => _EditBioScreenState();
}

class _EditBioScreenState extends State<EditBioScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _jobTitleController = TextEditingController();
  final _locationController = TextEditingController();
  final _passwordController = TextEditingController();
  final _bioController = TextEditingController();
  final _areasOfExpertiseController = TextEditingController();
  final _yearsOfExperienceController = TextEditingController();
  final _qualificationsController = TextEditingController();
  final _additionalResourcesController = TextEditingController();
  final _additionalInterestsController = TextEditingController();

  File? _profileImage;
  final picker = ImagePicker();

  Future getProfileImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  Future<void> updateMentorProfile(Map<String, dynamic> mentorData) async {
    try {
      // Make an API call to update the mentor's profile
      final response = await http.post(
        Uri.parse('https://your-api-endpoint.com/update-mentor-profile'),
        body: mentorData,
      );

      if (response.statusCode == 200) {
        // Profile update successful
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Profile updated successfully'),
          ),
        );
      } else {
        // Profile update failed
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to update profile'),
          ),
        );
      }
    } catch (e) {
      // Handle any exceptions
      print('Error updating profile: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Bio'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: getProfileImage,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: _profileImage != null
                        ? FileImage(_profileImage!)
                        : null,
                    child: _profileImage == null
                        ? Icon(Icons.camera_alt, size: 50)
                        : null,
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _jobTitleController,
                  decoration: InputDecoration(
                    labelText: 'Job Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _locationController,
                  decoration: InputDecoration(
                    labelText: 'Location',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Change Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _bioController,
                  decoration: InputDecoration(
                    labelText: 'Bio',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: null,
                ),
                TextFormField(
                  controller: _areasOfExpertiseController,
                  decoration: InputDecoration(
                    labelText: 'Areas of Expertise',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _yearsOfExperienceController,
                  decoration: InputDecoration(
                    labelText: 'Years of Experience',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _qualificationsController,
                  decoration: InputDecoration(
                    labelText: 'Qualifications',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _additionalResourcesController,
                  decoration: InputDecoration(
                    labelText: 'Additional Resources',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _additionalInterestsController,
                  decoration: InputDecoration(
                    labelText: 'Additional Interests',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Retrieve the form field values
                      String name = _nameController.text;
                      String jobTitle = _jobTitleController.text;
                      String location = _locationController.text;
                      String password = _passwordController.text;
                      String bio = _bioController.text;
                      String areasOfExpertise =
                          _areasOfExpertiseController.text;
                      String yearsOfExperience =
                          _yearsOfExperienceController.text;
                      String qualifications = _qualificationsController.text;
                      String additionalResources =
                          _additionalResourcesController.text;
                      String additionalInterests =
                          _additionalInterestsController.text;

                      // Create a data object with the form field values
                      Map<String, dynamic> mentorData = {
                        'name': name,
                        'jobTitle': jobTitle,
                        'location': location,
                        'password': password,
                        'bio': bio,
                        'areasOfExpertise': areasOfExpertise,
                        'yearsOfExperience': yearsOfExperience,
                        'qualifications': qualifications,
                        'additionalResources': additionalResources,
                        'additionalInterests': additionalInterests,
                        'profileImage': _profileImage,
                      };

                      // Call the function to update the mentor's profile
                      updateMentorProfile(mentorData);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(244, 81, 2, 155),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 16.0),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
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
