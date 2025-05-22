import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xFF0C9869), // Hijau tua
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'Hi Uishopy!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              'UI',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF0C9869),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
