# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# Currently set at 20 random kittens per execution
def seed_kittens
  20.times do
    Kitten.find_or_create_by(random_kitten_values)
  end
end

def random_kitten_values
  name = Faker::Name.unique.first_name
  age = Faker::Number.between(from: 1, to: 25)
  softness = Faker::Number.between(from: 1, to: 10)
  cuteness = Faker::Number.between(from: 1, to: 10)

  { name: name, age: age, softness: softness, cuteness: cuteness }
end

seed_kittens
