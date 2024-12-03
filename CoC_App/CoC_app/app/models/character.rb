class Character < ApplicationRecord
    # Associations
    has_one :characteristic, dependent: :destroy
  
    # Callbacks
    after_create :create_characteristic
  
    # Nested Attributes
    accepts_nested_attributes_for :characteristic
  
    private
  
    # Automatically create a characteristic after character creation
    def create_characteristic
      Characteristic.create!(character: self)
    end
  end