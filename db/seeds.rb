# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

restaurants = [
  { name: "La Petite Maison", address: "Nice, France", category: "french" },
  { name: "Peking Duck House", address: "New York, USA", category: "chinese" },
  { name: "Ristorante Da Vinci", address: "Florence, Italy", category: "italian" },
  { name: "Izakaya Umami", address: "Osaka, Japan", category: "japanese" },
  { name: "Chez Paul", address: "Lyon, France", category: "french" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Seeded #{Restaurant.count} restaurants."
