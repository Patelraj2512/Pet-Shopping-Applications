
class Category {
  final String id;
  final String title;
  final String imageUrl;
  final int count;

  Category({
    required this.id,
    required this.title,
    required this.imageUrl,
    this.count = 0,
  });
}

class Product {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  final double rating;
  final String description;
  final String weight; // For food bags
  final String categoryId;

  Product({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
    this.rating = 4.5,
    required this.description,
    this.weight = "",
    required this.categoryId,
  });
}

// Dummy Data
final List<Category> categories = [
  Category(
    id: 'c1',
    title: 'Dog Food',
    imageUrl: 'https://images.unsplash.com/photo-1589924691195-41432f849ff6?auto=format&fit=crop&w=500&q=80',
  ),
  Category(
    id: 'c2',
    title: 'Dog Treats',
    imageUrl: 'https://images.unsplash.com/photo-1582562124811-28ddd799e902?auto=format&fit=crop&w=500&q=80',
  ),
  Category(
    id: 'c3',
    title: 'Pet Grooming',
    imageUrl: 'https://images.unsplash.com/photo-1516734212186-a967f81ad0d7?auto=format&fit=crop&w=500&q=80',
  ),
  Category(
    id: 'c4',
    title: 'Accessories',
    imageUrl: 'https://images.unsplash.com/photo-1576201836106-db1758fd1c97?auto=format&fit=crop&w=500&q=80',
  ),
   Category(
    id: 'c5',
    title: 'Toys',
    imageUrl: 'https://images.unsplash.com/photo-1596495578065-6e0763fa1178?auto=format&fit=crop&w=500&q=80',
  ),
  Category(
    id: 'c6',
    title: 'Small Animals',
    imageUrl: 'https://images.unsplash.com/photo-1585110396000-c9a94158913b?auto=format&fit=crop&w=500&q=80',
  ),
  Category(
    id: 'c7',
    title: 'Birds',
    imageUrl: 'https://images.unsplash.com/photo-1522858547137-f1dcec554f55?auto=format&fit=crop&w=500&q=80',
  ),
  Category(
    id: 'c8',
    title: 'Aquariums',
    imageUrl: 'https://images.unsplash.com/photo-1522069169874-c58ec4b76be5?auto=format&fit=crop&w=500&q=80',
  ),
];

final List<Product> products = [
  Product(
    id: 'p1',
    title: 'Symply Dog Adult Chicken',
    imageUrl: 'https://images.unsplash.com/photo-1589924691195-41432f849ff6?auto=format&fit=crop&w=500&q=80',
    price: 13.99,
    rating: 4.8,
    description: 'A complete and balanced meal for adult dogs with chicken, rice, and vegetables. Helps in maintaining a healthy coat and strong immune system.',
    weight: '395g',
    categoryId: 'c1',
  ),
  Product(
    id: 'p2',
    title: 'Eco-friendly Dog Toy',
    imageUrl: 'https://images.unsplash.com/photo-1576201836106-db1758fd1c97?auto=format&fit=crop&w=500&q=80',
    price: 8.50,
    rating: 4.5,
    description: 'Made from recycled materials, this toy is durable and safe for your pets to play with.',
    weight: '200g',
    categoryId: 'c5',
  ),
  Product(
    id: 'p3',
    title: 'Premium Raw Treats',
    imageUrl: 'https://images.unsplash.com/photo-1582562124811-28ddd799e902?auto=format&fit=crop&w=500&q=80',
    price: 5.99,
    rating: 4.9,
    description: 'Delicious and healthy treats made from all-natural ingredients.',
    weight: '150g',
    categoryId: 'c2',
  ),
  Product(
    id: 'p4',
    title: 'Cozy Pet Bed',
    imageUrl: 'https://images.unsplash.com/photo-1591946614720-90a587da4a36?auto=format&fit=crop&w=500&q=80', // Bed/Cat generic
    price: 45.00,
    rating: 4.7,
    description: 'Ultra-soft pet bed providing maximum comfort for your furry friend.',
    weight: '',
    categoryId: 'c4',
  ),
];

final List<Map<String, String>> services = [
  {
    'title': 'Bathing & Drying',
    'image': 'https://images.unsplash.com/photo-1516734212186-a967f81ad0d7?auto=format&fit=crop&w=500&q=80',
    'desc': 'Experience the ultimate spa day.'
  },
  {
    'title': 'Dog Sitting',
    'image': 'https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?auto=format&fit=crop&w=500&q=80',
    'desc': 'Trusted sitters for your pet.'
  },
  {
      'title': 'Teeth Cleaning',
      'image': 'https://images.unsplash.com/photo-1583337130417-3346a1be7dee?auto=format&fit=crop&w=500&q=80', 
       'desc': 'Professional dental care.'
  }
];
