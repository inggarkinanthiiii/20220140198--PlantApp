import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/search_bar.dart';
import '../widgets/section_title.dart';
import '../widgets/plant_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: const [
              SizedBox(height: 16),
              Header(),
              SizedBox(height: 16),
              CustomSearchBar(),
              SizedBox(height: 24),
              SectionTitle(title: 'Recommended'),
              SizedBox(height: 12),
              PlantCardList(),
              SizedBox(height: 24),
              SectionTitle(title: 'Featured Plants'),
              SizedBox(height: 12),
              PlantCardList(),
            ],
          ),
        ),
      ),
    );
  }
}
