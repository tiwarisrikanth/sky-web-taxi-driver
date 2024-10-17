import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skydrive_driver/constants/colors/colors.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "Your Profile",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileHeader(),
            const SizedBox(height: 20),
            _buildMenuItem(Icons.home, "Home"),
            _buildMenuItem(Icons.insert_drive_file, "Documents"),
            _buildMenuItem(Icons.history, "History"),
            _buildMenuItem(Icons.star, "Customer Rating"),
            _buildMenuItem(Icons.account_balance_wallet, "Wallet"),
            _buildMenuItem(Icons.settings, "Settings"),
            const Divider(),
            _buildMenuItem(Icons.help_outline, "Help"),
            _buildLogoutButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    /*
     image: DecorationImage(
                  image: NetworkImage(
                    'https://images.pexels.com/photos/13448862/pexels-photo-13448862.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  ),
                  fit: BoxFit.cover,
                ),
     */

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/13448862/pexels-photo-13448862.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'), // Replace with actual image path
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Narasimha VARMA",
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "AP39LS1234",
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
              ),
              Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.blue, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    "Approved",
                    style:
                        GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Icon(Icons.star, color: Colors.yellow[700]),
              const SizedBox(height: 4),
              Text(
                "5.5",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[700]),
      title: Text(
        title,
        style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
      ),
      onTap: () {
        // Handle menu item tap
      },
    );
  }

  Widget _buildLogoutButton() {
    return ListTile(
      leading: Icon(Icons.exit_to_app, color: Colors.red),
      title: Text(
        "Logout",
        style: GoogleFonts.poppins(fontSize: 16, color: Colors.red),
      ),
      onTap: () {
        // Handle logout tap
      },
    );
  }
}
