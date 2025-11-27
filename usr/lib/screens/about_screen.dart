import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/footer.dart';
import 'package:couldai_user_app/widgets/navigation_bar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
                  'About Us',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            // Company Story Section
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Our Story',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Founded in 2005, our company has been providing top-quality plumbing services to the community for over 15 years. Our mission is to deliver reliable, efficient, and affordable solutions to all of our clients. We started as a small family-owned business and have grown into a trusted name in the industry, thanks to our commitment to customer satisfaction and quality workmanship.',
                          style: TextStyle(fontSize: 16, height: 1.5),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'We believe in building long-lasting relationships with our clients based on trust, integrity, and professionalism. Our team of licensed and insured plumbers is dedicated to solving your plumbing problems with the utmost care and precision.',
                          style: TextStyle(fontSize: 16, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    flex: 1,
                    child: Image.network(
                      'https://via.placeholder.com/400x400', // Placeholder image
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            // Testimonials Section
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  const Text(
                    'What Our Customers Say',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    spacing: 40,
                    runSpacing: 40,
                    alignment: WrapAlignment.center,
                    children: const [
                      TestimonialCard(
                        name: 'John Doe',
                        testimonial: '"The team was professional, punctual, and fixed my leak in no time. Highly recommended!"',
                      ),
                      TestimonialCard(
                        name: 'Jane Smith',
                        testimonial: '"I was impressed with their customer service and the quality of their work. I will definitely use them again."',
                      ),
                      TestimonialCard(
                        name: 'Peter Jones',
                        testimonial: '"Affordable pricing and excellent service. They explained everything clearly and got the job done right."',
                      ),
                    ],
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

class TestimonialCard extends StatelessWidget {
  final String name;
  final String testimonial;

  const TestimonialCard({
    super.key,
    required this.name,
    required this.testimonial,
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
            testimonial,
            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 10),
          Text(
            '- $name',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
