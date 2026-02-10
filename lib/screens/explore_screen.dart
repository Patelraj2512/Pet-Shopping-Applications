
import 'package:flutter/material.dart';
import '../models/data.dart';
import '../utils/colors.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Explore Categories",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search Product or Brand',
                        icon: Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
             // Filter Chips (Horizontal)
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  _buildFilterChip("All", true),
                  _buildFilterChip("Dog", false),
                  _buildFilterChip("Cat", false),
                  _buildFilterChip("Small Animal", false),
                   _buildFilterChip("Bird", false),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            // Grid
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final cat = categories[index];
                  return GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Selected category: ${cat.title}')),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: index % 2 == 0 ? const Color(0xFFF3F8F9) : const Color(0xFFFFF6F0),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                           Expanded(
                             child: ClipRRect(
                               borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                               child: Image.network(
                                 cat.imageUrl, 
                                 fit: BoxFit.cover,
                                 errorBuilder: (ctx, err, _) => Container(
                                   color: AppColors.lightGrey,
                                   child: const Icon(Icons.broken_image, color: Colors.grey),
                                 ),
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(12),
                             child: Text(
                               cat.title,
                               style: const TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color: AppColors.textMain,
                               ),
                               textAlign: TextAlign.center,
                               maxLines: 1,
                               overflow: TextOverflow.ellipsis,
                             ),
                           ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.accent : Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: isSelected ? AppColors.primary : AppColors.lightGrey,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? AppColors.primary : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
