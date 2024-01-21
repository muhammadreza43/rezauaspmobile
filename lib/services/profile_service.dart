import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.0),
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage(
                'assets/'), // Ganti dengan path gambar profil Anda
          ),
          SizedBox(height: 20.0),
          Text(
            'Muhammad Reza',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '2110020079',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20.0),
          ProfileInfoCard(
            icon: Icons.home,
            label: '5F SI Reguler Malam Banjarmasin',
          ),
          ProfileInfoCard(
            icon: Icons.phone,
            label: '+62 857-8737-6304',
          ),
          ProfileInfoCard(
            icon: Icons.location_on,
            label: 'Jl.Rawasari 27',
          ),
          // Add more ProfileInfoCard as needed
        ],
      ),
    );
  }
}

class ProfileInfoCard extends StatelessWidget {
  final IconData icon;
  final String label;

  ProfileInfoCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Source Sans Pro',
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
