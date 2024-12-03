FactoryBot.define do
  factory :characteristic do
    strength { Faker::Number.between(from: 3, to: 18) }
    dexterity { Faker::Number.between(from: 3, to: 18) }
    constitution { Faker::Number.between(from: 3, to: 18) }
    appearance { Faker::Number.between(from: 3, to: 18) }
    power { Faker::Number.between(from: 3, to: 18) }
    luck { Faker::Number.between(from: 3, to: 18) }
    size { Faker::Number.between(from: 8, to: 18) }
    intelligence { Faker::Number.between(from: 8, to: 18) }
    education { Faker::Number.between(from: 8, to: 18) }
    association :character
  end
end