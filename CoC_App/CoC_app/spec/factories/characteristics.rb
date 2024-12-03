FactoryBot.define do
  factory :characteristic do
    Strength { Faker::Number.between(from: 3, to: 18) }
    Dexterity { Faker::Number.between(from: 3, to: 18) }
    Constitution { Faker::Number.between(from: 3, to: 18) }
    Appearance { Faker::Number.between(from: 3, to: 18) }
    Power { Faker::Number.between(from: 3, to: 18) }
    Luck { Faker::Number.between(from: 3, to: 18) }
    Size { Faker::Number.between(from: 8, to: 18) }
    Intelligence { Faker::Number.between(from: 8, to: 18) }
    Education { Faker::Number.between(from: 8, to: 18) }
    association :character
  end
end