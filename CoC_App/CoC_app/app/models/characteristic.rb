class Characteristic < ApplicationRecord
  # Associations
  belongs_to :character 

  # Validations for presence
  validates :Strength, :Dexterity, :Constitution, :Appearance, :Power, :Luck, 
            :Size, :Intelligence, :Education, presence: true

  # Numericality validation with range constraints
  validates :Strength, numericality: { greater_than_or_equal_to: 3, less_than_or_equal_to: 18 }
  validates :Dexterity, numericality: { greater_than_or_equal_to: 3, less_than_or_equal_to: 18 }
  validates :Constitution, numericality: { greater_than_or_equal_to: 3, less_than_or_equal_to: 18 }
  validates :Appearance, numericality: { greater_than_or_equal_to: 3, less_than_or_equal_to: 18 }
  validates :Power, numericality: { greater_than_or_equal_to: 3, less_than_or_equal_to: 18 }
  validates :Luck, numericality: { greater_than_or_equal_to: 3, less_than_or_equal_to: 18 }
  validates :Size, numericality: { greater_than_or_equal_to: 8, less_than_or_equal_to: 18 }
  validates :Intelligence, numericality: { greater_than_or_equal_to: 8, less_than_or_equal_to: 18 }
  validates :Education, numericality: { greater_than_or_equal_to: 8, less_than_or_equal_to: 18 }
end
