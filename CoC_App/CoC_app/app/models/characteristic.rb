class Characteristic < ApplicationRecord
  # Associations
  belongs_to :character

  # Validations for presence
  validates :Strength, :Dexterity, :Constitution, :Appearance, :Power, :Luck, 
            :Size, :Intelligence, :Education, presence: true

  # Validations for range
  validates :Strength, :Dexterity, :Constitution, :Appearance, :Power, :Luck,
            numericality: { greater_than_or_equal_to: 3, less_than_or_equal_to: 18 }
  validates :Size, :Intelligence, :Education,
            numericality: { greater_than_or_equal_to: 8, less_than_or_equal_to: 18 }
end
