# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Running Seed"
Supplier.create(
  name: "ABC Metal",
  phone_number: "(800)555-5555",
  email: "ABCMetal@site.com",
)

Supplier.create(
  name: "Paul",
  phone_number: "(123)456-7890",
  email: "paulg@gmail.com",
)

Product.create(
  name: "Water Bottle",
  price: 20,
  description: "A sturdy insulated water bottle.",
  supplier_id: 1,
  quantity: 20,
)

Product.create(
  name: "Bike",
  price: 200,
  description: "A recently refurbished bicycle.",
  supplier_id: 2,
  quantity: 1,
)

Product.create(
  name: "Toolbox",
  price: 100,
  description: "A strong metal toolbox.",
  supplier_id: 1,
  quantity: 10,
)

Image.create(
  product_id: 1,
  url: "https://m.media-amazon.com/images/I/61lYvJfwvML._AC_SX466_.jpg",
)

Image.create(
  product_id: 1,
  url: "https://www.yeti.com/on/demandware.static/-/Library-Sites-SiteGenesisSharedLibrary/default/dw4505fa86/images/asset-tech-features/drinkware/rambler-26-oz-bottle-chug-cap/191416-Chug-Inline-26oz-Bottle-Chug-Cap-Navy-Front-920x850.png",
)

Image.create(
  product_id: 1,
  url: "https://www.yeti.com/on/demandware.static/-/Library-Sites-SiteGenesisSharedLibrary/default/dwedb49cb7/images/asset-tech-features/drinkware/rambler-18-oz-bottle-chug-cap/191416-Chug-Inline-18oz-Bottle-Chug-Cap-Stainless-Front-920x850.png",
)

Image.create(
  product_id: 2,
  url: "https://ae01.alicdn.com/kf/HTB1MXgYaoKF3KVjSZFEq6xExFXas/kink-bmx-diy-bmx-bike.jpg",
)

Image.create(
  product_id: 2,
  url: "https://media.karousell.com/media/photos/products/2018/08/06/kink_bmx_1533552185_e54a3b31_progressive.jpg",
)

Image.create(
  product_id: 2,
  url: "https://i.ebayimg.com/images/g/TdsAAOSwAUZhcyOD/s-l1600.jpg",
)

Image.create(
  product_id: 3,
  url: "https://mobileimages.lowes.com/productimages/ee750f71-418e-4620-b630-e7ac4d6a6710/11587710.jpg?size=xl",
)

Image.create(
  product_id: 3,
  url: "https://www.craftsman.com/NA/PRODUCT/IMAGES/3000x3000x96//CMMT45303/CMMT45303_1.jpg?resize=600x600",
)

Image.create(
  product_id: 3,
  url: "https://m.media-amazon.com/images/I/41qpqo4sDEL._AC_.jpg",
)
