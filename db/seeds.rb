# frozen_string_literal: true

products = [
  {
    name: 'Product 1',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    price: 9.99,
    image: 'product1.jpg'
  },
  {
    name: 'Product 2',
    description: 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 19.99,
    image: 'product1.jpg'
  },
  {
    name: 'Product 3',
    description: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco.',
    price: 29.99,
    image: 'product1.jpg'
  },
  {
    name: 'Product 4',
    description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse.',
    price: 39.99,
    image: 'product1.jpg'
  },
  {
    name: 'Product 5',
    description: 'Excepteur sint occaecat cupidatat non proident, sunt in culpa.',
    price: 49.99,
    image: 'product1.jpg'
  }
]

products.each do |product|
  Product.create(product)
end
