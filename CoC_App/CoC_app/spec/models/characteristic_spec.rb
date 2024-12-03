require 'rails_helper'

RSpec.describe Characteristic, type: :model do
  # Associations
  it { is_expected.to belong_to(:character) }

  # Validations for Presence
  %i[Strength Dexterity Constitution Appearance Power Luck Size Intelligence Education].each do |attribute|
    it { is_expected.to validate_presence_of(attribute) }
  end

  # Validations for Numericality and Range
  describe 'attribute range validations' do
    let(:characteristic) { build(:characteristic) }

    context 'Strength validation' do
      it 'is invalid if Strength is out of range' do
        characteristic.Strength = 20
        expect(characteristic).not_to be_valid
        characteristic.Strength = 2
        expect(characteristic).not_to be_valid
      end

      it 'is valid if Strength is within range' do
        characteristic.Strength = 10
        expect(characteristic).to be_valid
      end
    end

    context 'Dexterity validation' do
      it 'is invalid if Dexterity is out of range' do
        characteristic.Dexterity = 20
        expect(characteristic).not_to be_valid
        characteristic.Dexterity = 2
        expect(characteristic).not_to be_valid
      end

      it 'is valid if Dexterity is within range' do
        characteristic.Dexterity = 15
        expect(characteristic).to be_valid
      end
    end

    # Add similar contexts for other attributes
    %i[Constitution Appearance Power Luck].each do |attr|
      context "#{attr} validation" do
        it "is invalid if #{attr} is out of range" do
          characteristic.send("#{attr}=", 20)
          expect(characteristic).not_to be_valid
          characteristic.send("#{attr}=", 2)
          expect(characteristic).not_to be_valid
        end

        it "is valid if #{attr} is within range" do
          characteristic.send("#{attr}=", 12)
          expect(characteristic).to be_valid
        end
      end
    end

    context 'Size validation' do
      it 'is invalid if Size is out of range' do
        characteristic.Size = 20
        expect(characteristic).not_to be_valid
        characteristic.Size = 7
        expect(characteristic).not_to be_valid
      end

      it 'is valid if Size is within range' do
        characteristic.Size = 10
        expect(characteristic).to be_valid
      end
    end

    context 'Intelligence validation' do
      it 'is invalid if Intelligence is out of range' do
        characteristic.Intelligence = 20
        expect(characteristic).not_to be_valid
        characteristic.Intelligence = 7
        expect(characteristic).not_to be_valid
      end

      it 'is valid if Intelligence is within range' do
        characteristic.Intelligence = 15
        expect(characteristic).to be_valid
      end
    end

    context 'Education validation' do
      it 'is invalid if Education is out of range' do
        characteristic.Education = 20
        expect(characteristic).not_to be_valid
        characteristic.Education = 7
        expect(characteristic).not_to be_valid
      end

      it 'is valid if Education is within range' do
        characteristic.Education = 12
        expect(characteristic).to be_valid
      end
    end
  end
end
