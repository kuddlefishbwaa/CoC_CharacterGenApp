require 'rails_helper'

RSpec.describe Character, type: :model do
  # Associations
  it { is_expected.to have_one(:characteristic).dependent(:destroy) }

  # Validations
  it { is_expected.to validate_presence_of(:Name) }
  it { is_expected.to validate_presence_of(:Birthplace) }
  it { is_expected.to validate_presence_of(:Pronouns) }
  it { is_expected.to validate_presence_of(:Ocupation) }
  it { is_expected.to validate_presence_of(:Residance) }
  it { is_expected.to validate_presence_of(:Age) }

  # Nested Attributes
  it { is_expected.to accept_nested_attributes_for(:characteristic) }

  # Callbacks
  describe 'after_create callback' do
    it 'creates a characteristic after character is created' do
      character = create(:character)
      expect(character.characteristic).not_to be_nil
    end
  end
end