import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Development 2',
      theme: ThemeData(useMaterial3: true),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // Reusable card container
  Widget cardBox(Color color, Widget child) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }

  // Improved info text with fixed-width labels
  Widget infoText(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              "$label:",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Mobile Development 2",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),

              /// HEADER SECTION
              cardBox(
                Colors.deepPurple,
                const Column(
                  children: [
                    Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Student Information Card",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    )
                  ],
                ),
              ),

              /// PROFILE PHOTO SECTION
              cardBox(
                Colors.red,
                Column(
                  children: [
                    const Text(
                      "Profile Photo",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/formal_pic.png",
                        height: 140,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),

              /// PERSONAL DETAILS
              cardBox(
                Colors.red.shade700,
                Column(
                  children: [
                    const Text(
                      "Personal Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const Divider(color: Colors.white24),
                    infoText("Full Name", "Kate Mergelaine A. Lacanlali"),
                    infoText("Nickname", "Klaine"),
                    infoText("Birthday", "April 15, 2005"),
                    infoText("Age", "20"),
                    infoText("Gender", "Female"),
                    infoText("Address", "Bangar, La Union"),
                  ],
                ),
              ),

              /// ACADEMIC INFORMATION
              cardBox(
                Colors.green.shade700,
                Column(
                  children: [
                    const Text(
                      "Academic Information",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const Divider(color: Colors.white24),
                    infoText("School", "Lorma Colleges"),
                    infoText("Course", "BSIT"),
                    infoText("Year & Section", "II- Section 1"),
                    infoText("Student No.", "2401850"),
                    infoText("Subject", "Mobile Development 2"),
                    infoText("Instructor", "Johnny"),
                  ],
                ),
              ),

              /// FAVORITES
              cardBox(
                Colors.blue.shade700,
                Column(
                  children: [
                    const Text(
                      "My Favorites",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const Divider(color: Colors.white24),
                    infoText("Color", "Blue, Black, White"),
                    infoText("Food", "Chimcken"),
                    infoText("Movie", "The Greatest Showman"),
                    infoText("Music", "Waiting Room"),
                    infoText("Sport", "Badminton, Volleyball"),
                    infoText("Hobby", "Watching Netflix, Sleeping, and Listening to music"),
                  ],
                ),
              ),

              cardBox(
                Colors.orange.shade800,
                Column(
                  children: [
                    const Text(
                      "Fun Facts About Me",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const Divider(color: Colors.white24),
                    infoText("Pet", "San Juan, Mei Mei, Skye, Benten, Belat, Pampu"),
                    infoText("Skill", "Web Developer, FrontEnd, BackEnd"),
                    infoText("Dream Job", "To become an owner of computer shop"),
                    infoText("Quote", "Reklamo.Iyak.Code.Repeat"),
                  ],
                ),
              ),

              cardBox(
                Colors.deepPurple.shade900,
                Column(
                  children: [
                    const Text(
                      "Developer Info",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const Divider(color: Colors.white24),
                    infoText("Developer", "Lacanlali, Kate Mergelaine A."),
                    infoText("Instructor", "Johnny Verzola"),
                    infoText("Term", "2nd Semester, A.Y. 2025-2026"),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}