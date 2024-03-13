import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';

import 'model/product.dart'; // Make sure to add faker package to your dependencies

class TestData {
  createProducts(String branchId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Initialize Faker library
    final faker = Faker();

    // Generate test data
    final List<Map<String, dynamic>> testData = List.generate(
      20, // Change this number to generate more or less test data
          (index) => {
        'id': faker.guid.guid(),
        'name': faker.person.name(),
        'description': faker.lorem.sentence(),
        'imgUrl': faker.image.image(),
        'price': (Random().nextDouble() * 100).toDouble(), // Generate random price
        'subCategoryId': faker.guid.guid(),
        'categoryId': faker.guid.guid(),
        'vendorId': faker.guid.guid(),
      },
    );

    // Convert test data to ProductModel objects
    final List<ProductModel> products = testData.map((data) {
      return ProductModel(
        id: data['id'],
        name: data['name'],
        description: data['description'],
        imgUrl: data['imgUrl'],
        price: data['price'],
        subCategoryId: data['subCategoryId'],
        categoryId: data['categoryId'],
        vendorId: data['vendorId'],
      );
    }).toList();

    // Upload test data to Firestore
    for (var product in products) {
      await firestore.collection('branches').doc(branchId).collection('products').doc(product.id).set(product.toJson());
      print('Uploaded product: ${product.id}');
    }
    print('Test data upload complete.');
  }
}
