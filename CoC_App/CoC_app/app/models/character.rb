class Character < ApplicationRecord
    # Associations
    has_one :characteristic, dependent: :destroy
  
    # Nested Attributes
    accepts_nested_attributes_for :characteristic
  
    # Callbacks
    after_create :create_characteristic
  
    # Validations
    validates :Name, presence: true, length: { minimum: 3, maximum: 50 }
    validates :Birthplace, presence: true, length: { maximum: 100 }
    validates :Pronouns, presence: true, inclusion: { in: %w[He/Him She/Her They/Them],
                                                      message: "%{value} is not a valid pronoun" }
    validates :Ocupation, presence: true, length: { maximum: 50 }
    validates :Residance, presence: true, length: { maximum: 100 }
    validates :Age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 150 }
  
    private
    # Automatically create a characteristic after character creation
    def create_characteristic
      Characteristic.create!(character: self)
    end
  end
  