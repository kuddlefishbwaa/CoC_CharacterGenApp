# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Destroy existing records
Characteristic.destroy_all
Character.destroy_all

50.times do |i|
 character =Character.create!(
    Name: "Name #{i + 1}",
    Birthplace: "Birthplace #{i + 1}",
    Pronouns: "They/Them",
    Ocupation: "Mook",
    Residance: "Here",
    Age: "#{i + 1}",)

 # Create a characteristics for the characters
 characteristic = Characteristic.find_by(character_id: character.id)
  if characteristic
    characteristic.update!(
    Strength:Faker::Number.between(from: 3, to: 18),
    Dexterity:Faker::Number.between(from: 3, to: 18),
    Constitution:Faker::Number.between(from: 3, to: 18),
    Appearance:Faker::Number.between(from: 3, to: 18),
    Power:Faker::Number.between(from: 3, to: 18),
    Luck:Faker::Number.between(from: 3, to: 18),
    Size:Faker::Number.between(from: 8, to: 18),
    Intelligence:Faker::Number.between(from: 8, to: 18),
    Education:Faker::Number.between(from: 8, to: 18),)
  end
end
