import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // About Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Plumbing Services',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Your trusted partner for all plumbing needs. We provide fast, reliable, and affordable services.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              // Quick Links Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Quick Links',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    FooterLink(text: 'Home', onTap: () => Navigator.pushNamed(context, '/')),
                    FooterLink(text: 'Services', onTap: () => Navigator.pushNamed(context, '/services')),
                    FooterLink(text: 'About Us', onTap: () => Navigator.pushNamed(context, '/about')),
                    FooterLink(text: 'Contact Us', onTap: () => Navigator.pushNamed(context, '/contact')),
                  ],
                ),
              ),

              // Contact Info Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Contact Info',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('123 Plumbing St, Anytown, USA', style: TextStyle(color: Colors.white70)),
                    Text('contact@plumbingservices.com', style: TextStyle(color: Colors.white70)),
                    Text('(123) 456-7890', style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(color: Colors.white24),
          const SizedBox(height: 20),
          const Text(
            '© 2023 Plumbing Services. All Rights Reserved.',
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

class FooterLink extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const FooterLink({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white70, decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
