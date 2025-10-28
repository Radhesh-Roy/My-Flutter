import 'package:flutter/material.dart';
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: Icon(Icons.arrow_back),
//         centerTitle: true,
//         title: Text("My Profile", style: TextStyle(fontWeight: FontWeight.bold),),
//         actions: [
//           Icon(Icons.settings_outlined),
//           SizedBox(width: 10,)
//         ],
//
//       ),
//       body: Column(
//         children: [
//           Expanded(child: )
//         ],
//       ),
//
//     );
//   }
// }
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.settings, color: Colors.black),
          )
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 40,

                    backgroundImage: AssetImage('assets/Sweater01.jpg'), // replace with your image
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(3),
                      child: const Icon(Icons.camera_alt, size: 15, color: Colors.black54),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15),

              // Name, username, and edit button in a column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Radhesh Roy',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      '@FlutterDeveloper',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                        ),
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Menu list items
          ListTile(
            leading: const Icon(Icons.favorite_border, color: Colors.black54),
            title: const Text('Favourites'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.download_outlined, color: Colors.black54),
            title: const Text('Downloads'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.language, color: Colors.black54),
            title: const Text('Language'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.location_on_outlined, color: Colors.black54),
            title: const Text('Location'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.subscriptions_outlined, color: Colors.black54),
            title: const Text('Subscription'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.cleaning_services_outlined, color: Colors.black54),
            title: const Text('Clear cache'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.history, color: Colors.black54),
            title: const Text('Clear history'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          ),


          // Logout
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text(
              'Log out',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
