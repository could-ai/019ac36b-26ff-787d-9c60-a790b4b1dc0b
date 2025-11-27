import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/footer.dart';
import 'package:couldai_user_app/widgets/navigation_bar.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomNavigationBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Page Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40),
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Our Services',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            // Services List
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Wrap(
                spacing: 40,
                runSpacing: 40,
                alignment: WrapAlignment.center,
                children: const [
                  ServiceListItem(
                    title: 'Emergency Plumbing',
                    description: 'Available 24/7 for burst pipes, severe clogs, and other urgent issues. Our team responds quickly to minimize damage and restore your plumbing system.',
                  ),
                  ServiceListItem(
                    title: 'Drain Cleaning',
                    description: 'We use the latest technology to clear clogged drains and ensure your pipes are flowing smoothly. We handle kitchen sinks, bathroom drains, and main sewer lines.',
                  ),
                  ServiceListItem(
                    title: 'Water Heater Repair & Installation',
                    description: 'Whether you need a new water heater installed or your current one repaired, our experts can handle all makes and models, including tankless water heaters.',
                  ),
                  ServiceListItem(
                    title: 'Leak Detection & Repair',
                    description: 'Our advanced leak detection equipment allows us to find and fix leaks with minimal disruption to your property, saving you money on water bills.',
                  ),
                  ServiceListItem(
                    title: 'Faucet & Fixture Repair/Installation',
                    description: 'We can repair or replace all types of faucets, sinks, toilets, and other plumbing fixtures to update your home and improve functionality.',
                  ),
                  ServiceListItem(
                    title: 'Garbage Disposal Services',
                    description: 'From repairs to new installations, we can help you with your garbage disposal needs, ensuring it operates efficiently and safely.',
                  ),
                ],
              ),
            ),

            const Footer(),
          ],
        ),
      ),
    );
  }
}

class ServiceListItem extends StatelessWidget {
  final String title;
  final String description;

  const ServiceListItem({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
