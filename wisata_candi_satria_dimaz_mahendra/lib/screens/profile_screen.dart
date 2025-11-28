import 'package:flutter/material.dart';
import 'package:wisata_candi_satria_dimaz_mahendra/widgets/profile_info_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSignedIn = false;
  String fullName = 'Satria Dimaz Mahendra';
  String userName = 'Satria';
  int favoriteCandiCount = 0;

  void signIn() {
    Navigator.pushNamed(context, '/signin');
  }

  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  void onEditPressed() {
    debugPrint('Icon edit ditekan...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.deepPurple, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                            AssetImage('images/placeholder_image.png'),
                          ),
                        ),

                        if (isSignedIn)
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.deepPurple[50],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Divider(color: Colors.deepPurple),
                const SizedBox(height: 4),

                ProfileInfoItem(
                  icon: Icons.lock,
                  label: 'Pengguna',
                  value: userName,
                  iconColor: Colors.amber,
                ),

                const SizedBox(height: 4),
                const Divider(color: Colors.deepPurple),
                const SizedBox(height: 4),

                ProfileInfoItem(
                  icon: Icons.person,
                  label: 'Nama',
                  value: fullName,
                  showEditIcon: isSignedIn,
                  onEditPressed: onEditPressed,
                  iconColor: Colors.blue,
                ),

                const SizedBox(height: 4),
                const Divider(color: Colors.deepPurple),
                const SizedBox(height: 4),

                ProfileInfoItem(
                  icon: Icons.favorite,
                  label: 'Favorit',
                  value: '$favoriteCandiCount',
                  iconColor: Colors.red,
                ),

                const SizedBox(height: 20),

                isSignedIn
                    ? TextButton(
                  onPressed: signOut,
                  child: const Text('Sign Out'),
                )
                    : TextButton(
                  onPressed: signIn,
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
