
import 'package:flutter/material.dart';
import '../models/data.dart';
import '../widgets/product_card.dart';
import '../utils/colors.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text("Favourites"),
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
      ),
      body: products.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Icon(Icons.favorite_border, size: 80, color: Colors.grey.shade300),
                   const SizedBox(height: 16),
                   const Text("No favourites yet", style: TextStyle(color: Colors.grey)),
                ],
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: products.length, // Displaying all products as examples
              itemBuilder: (context, index) {
                return ProductCard(
                  product: products[index],
                  isHorizontal: false, // Vertical card mode
                );
              },
            ),
    );
  }
}
