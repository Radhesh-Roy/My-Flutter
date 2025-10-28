import 'package:flutter/material.dart';

class SalonHomeScreen extends StatelessWidget {
  const SalonHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with Greeting and Search
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello, Samantha",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Find the service you want, and treat yourself",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF006D77),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(Icons.search, color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Offer Banner
              Container(
                padding: EdgeInsets.all(00),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1604654894610-df63bc536371",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           "Look more beautiful and \nsave more discount",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 16,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                       Container(
                         height: 30,
                         width: 100,
                         
                         color: Colors.red,
                       )
                       ],
                     ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFB703),
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          "Up to\n50%",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // What do you want to do?
              const Text(
                "What do you want to do?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Services Grid
              GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 12,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  ServiceIcon(icon: Icons.cut, label: "Haircut"),
                  ServiceIcon(icon: Icons.brush, label: "Nails"),
                  ServiceIcon(icon: Icons.face, label: "Facial"),
                  ServiceIcon(icon: Icons.palette, label: "Coloring"),
                  ServiceIcon(icon: Icons.spa, label: "Spa"),
                  ServiceIcon(icon: Icons.waves, label: "Waxing"),
                  ServiceIcon(icon: Icons.favorite, label: "Makeup"),
                  ServiceIcon(icon: Icons.self_improvement, label: "Massage"),
                ],
              ),

              const SizedBox(height: 25),

              // Salon You Follow
              const Text(
                "Salon you follow",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FollowSalon(
                        image:
                        "https://images.unsplash.com/photo-1599940824399-b87987ceb72a"),
                    FollowSalon(
                        image:
                        "https://images.unsplash.com/photo-1604908176997-73da9a7a8b14"),
                    FollowSalon(
                        image:
                        "https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9"),
                    FollowSalon(
                        image:
                        "https://images.unsplash.com/photo-1519741497674-611481863552"),
                    FollowSalon(
                        image:
                        "https://images.unsplash.com/photo-1600181952224-9d4b09e727f3"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget for each service icon
class ServiceIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const ServiceIcon({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFE0F7FA),
            border: Border.all(color: const Color(0xFF00B4D8)),
          ),
          child: Icon(icon, color: const Color(0xFF00B4D8), size: 26),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 13, color: Colors.black87),
        ),
      ],
    );
  }
}

// Widget for circular salon avatar
class FollowSalon extends StatelessWidget {
  final String image;
  const FollowSalon({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF00B4D8), width: 2),
      ),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}
