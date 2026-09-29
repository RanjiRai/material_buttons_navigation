import 'package:flutter/material.dart';

import '../widgets/app_background.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xFF0F172A),
          ),
        ),
        centerTitle: true,
      ),

      body: AppBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),

            child: Column(
              children: [
                Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF6FF),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFBFDBFE),
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 65,
                    color: Color(0xFF2563EB),
                  ),
                ),

                const SizedBox(height: 18),

                const Text(
                  'Ranjit Rai',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F172A),
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Student',
                  style: TextStyle(
                    color: Color(0xFF64748B),
                  ),
                ),

                const SizedBox(height: 28),

                Container(
                  padding: const EdgeInsets.all(8),

                  decoration: BoxDecoration(
                    color: Colors.white
                        .withValues(alpha: 0.94),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: const Color(0xFFE2E8F0),
                    ),
                  ),

                  child: const Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.person_outline,
                          color: Color(0xFF2563EB),
                        ),
                        title: Text('Name'),
                        subtitle: Text('Ranjit Rai'),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.school_outlined,
                          color: Color(0xFF2563EB),
                        ),
                        title: Text('Role'),
                        subtitle: Text('Student'),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.email_outlined,
                          color: Color(0xFF2563EB),
                        ),
                        title: Text('Email'),
                        subtitle:
                        Text('ranjitrai3456@gmail.com'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(
                        const SnackBar(
                          content:
                          Text('Edit Profile clicked'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.edit_outlined),
                    label: const Text('Edit Profile'),
                  ),
                ),

                const SizedBox(height: 12),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Back'),
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