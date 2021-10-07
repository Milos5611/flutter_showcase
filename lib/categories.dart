class CategoryModel {
  final String title;
  final List<String> selections;

  CategoryModel({required this.title, required this.selections});
}

CategoryModel mensCategory = CategoryModel(title: "Men", selections: [
  "Shirts",
  "Jeans",
  "Shorts",
]);
CategoryModel womensCategory = CategoryModel(title: "Women", selections: [
  "Shirts",
  "Jeans",
]);
CategoryModel petsCategory = CategoryModel(title: "Pets", selections: [
  "Toys",
  "Treats",
]);
