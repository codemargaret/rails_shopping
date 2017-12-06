Product.destroy_all

10.times do
  product = Product.create(
    price: Faker::Commerce.price,
    name: Faker::Commerce.product_name,
    details: Faker::Commerce.material
    )
  end

  p "You now have #{Product.count} products in your db"
