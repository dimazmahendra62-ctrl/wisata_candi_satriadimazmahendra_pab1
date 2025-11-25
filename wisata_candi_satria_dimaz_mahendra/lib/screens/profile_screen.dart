import 'package:flutter/material.dart';
import '../widgets/profile_info_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSignedIn = true;

  String userName = 'Satria Dimaz Mahendra';
  String userEmail = 'Dimaz@gmail.com';
  int favoriteCandiCount = 2;

  void signIn() {
    setState(() {
      isSignedIn = true;
    });
  }

  void signOut() {
    setState(() {
      isSignedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Header background
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  // Avatar
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage(
                                'assets/images/placeholder_image.png',
                              ),
                            ),
                          ),

                          // Camera icon
                          if (isSignedIn)
                            Positioned(
                              right: -6,
                              bottom: -6,
                              child: Material(
                                elevation: 2,
                                shape: const CircleBorder(),
                                color: Colors.white,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.camera_alt),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Name
                  Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 12),

                  // Full Name row
                  ProfileInfoItem(
                    icon: Icons.person,
                    label: 'Full Name',
                    value: userName,
                    iconColor: Colors.deepPurple,
                    showEditIcon: isSignedIn,
                    onEditPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Edit name tapped')),
                      );
                    },
                  ),

                  const SizedBox(height: 4),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 4),

                  // Email row
                  ProfileInfoItem(
                    icon: Icons.email,
                    label: 'Email',
                    value: userEmail,
                    iconColor: Colors.deepPurple,
                    showEditIcon: isSignedIn,
                    onEditPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Edit email tapped')),
                      );
                    },
                  ),

                  const SizedBox(height: 4),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 4),

                  // Favorite count
                  ProfileInfoItem(
                    icon: Icons.favorite,
                    label: 'Favorite Candi',
                    value: favoriteCandiCount.toString(),
                    iconColor: Colors.deepPurple,
                    showEditIcon: false,
                    onEditPressed: null,
                  ),

                  const SizedBox(height: 20),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 8),

                  // Sign In / Sign Out Button
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        if (isSignedIn) {
                          signOut();
                        } else {
                          signIn();
                        }
                      },
                      child: Text(isSignedIn ? 'Sign Out' : 'Sign In'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
