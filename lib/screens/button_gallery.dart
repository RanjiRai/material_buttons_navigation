import 'package:flutter/material.dart';

import '../widgets/app_background.dart';
import 'profile_screen.dart';

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Button Gallery',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xFF0F172A),
          ),
        ),
        centerTitle: true,

        actions: [
          IconButton(
            tooltip: 'Profile',
            icon: const Icon(
              Icons.person_outline,
              color: Color(0xFF2563EB),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF2563EB),
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: const Icon(Icons.add),
      ),

      body: AppBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(
              22,
              16,
              22,
              100,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Explore Buttons',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F172A),
                  ),
                ),

                const SizedBox(height: 6),

                const Text(
                  'Different Material button styles and navigation actions.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF64748B),
                  ),
                ),

                const SizedBox(height: 28),

                _buildButtonCard(
                  title: 'Elevated Button',
                  subtitle: 'Open your profile using Navigator.push()',
                  icon: Icons.person_outline,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const ProfileScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.person_outline),
                    label: const Text('Open Profile'),
                  ),
                ),

                _buildButtonCard(
                  title: 'Filled Button',
                  subtitle: 'Open the details screen using a named route',
                  icon: Icons.info_outline,
                  child: FilledButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/details',
                      );
                    },
                    icon: const Icon(Icons.info_outline),
                    label: const Text('View Details'),
                  ),
                ),

                _buildButtonCard(
                  title: 'Filled Tonal Button',
                  subtitle: 'Open application settings',
                  icon: Icons.settings_outlined,
                  child: FilledButton.tonalIcon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/settings',
                      );
                    },
                    icon: const Icon(Icons.settings_outlined),
                    label: const Text('Open Settings'),
                  ),
                ),

                _buildButtonCard(
                  title: 'Outlined Button',
                  subtitle: 'Performs a simple refresh action',
                  icon: Icons.refresh,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Gallery refreshed successfully',
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Refresh'),
                  ),
                ),

                _buildButtonCard(
                  title: 'Text Button',
                  subtitle: 'Shows additional information',
                  icon: Icons.article_outlined,
                  child: TextButton.icon(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('About'),
                            content: const Text(
                              'This application demonstrates different Flutter Material buttons and navigation methods.',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.article_outlined),
                    label: const Text('About Application'),
                  ),
                ),

                _buildButtonCard(
                  title: 'Icon Button',
                  subtitle: 'Demonstrates an IconButton action',
                  icon: Icons.favorite_outline,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton.filled(
                      tooltip: 'Favourite',
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                            content:
                            Text('Added to favourites'),
                          ),
                        );
                      },
                      icon: const Icon(Icons.favorite),
                    ),
                  ),
                ),

                _buildButtonCard(
                  title: 'Button with Icon',
                  subtitle: 'Navigate to the Add Item screen',
                  icon: Icons.add_box_outlined,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/add',
                      );
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Add Item'),
                  ),
                ),

                _buildButtonCard(
                  title: 'Custom Styled Button',
                  subtitle:
                  'Custom color, shape and padding',
                  icon: Icons.check_circle_outline,
                  child: SizedBox(
                    height: 52,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color(0xFF2563EB),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                            content:
                            Text('Custom button clicked'),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.check_circle_outline,
                      ),
                      label: const Text(
                        'Approve',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                SizedBox(
                  height: 52,
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor:
                      const Color(0xFFDC2626),
                      side: const BorderSide(
                        color: Color(0xFFFCA5A5),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        '/',
                      );
                    },
                    icon: const Icon(Icons.logout),
                    label: const Text('Logout'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Widget child,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFFE2E8F0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 16,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF6FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: const Color(0xFF2563EB),
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0F172A),
                      ),
                    ),

                    const SizedBox(height: 3),

                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64748B),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          child,
        ],
      ),
    );
  }
}