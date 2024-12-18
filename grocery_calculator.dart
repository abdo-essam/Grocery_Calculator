void main() {
  // list of grocery items
  List<Map<String, dynamic>> groceryItems = [
    {'name': 'Milk', 'price': 10.0},
    {'name': 'Bread', 'price': 5.0},
    {'name': 'Eggs', 'price': 8.0},
    {'name': 'Cheese', 'price': 12.0}
  ];

  // constant tax rate
  const double taxRate = 0.10;

  // Variable to calculate total price before tax
  double totalPriceBeforeTax = 0.0;
  for (var item in groceryItems) {
    totalPriceBeforeTax += item['price'];
  }

  // Calculate the total price after adding tax
  double totalPriceAfterTax = totalPriceBeforeTax * (1 + taxRate);

  // Print results
  print('Total price before tax: \$${totalPriceBeforeTax.toStringAsFixed(2)}');
  print('Tax amount (10%): \$${(totalPriceBeforeTax * taxRate).toStringAsFixed(2)}');
  print('Total price after tax: \$${totalPriceAfterTax.toStringAsFixed(2)}');
}
