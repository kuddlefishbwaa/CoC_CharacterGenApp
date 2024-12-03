FactoryBot.define do
  factory :character do
    Name { Faker::Name.name }
    Birthplace { Faker::Address.city }
    Pronouns { %w[He/Him She/Her They/Them].sample }
    Ocupation { "Mook" }
    Residance { Faker::Address.community }
    Age { Faker::Number.between(from: 18, to: 100) }
  end
end