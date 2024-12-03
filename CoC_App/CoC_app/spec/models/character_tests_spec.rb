require 'rails_helper'

RSpec.describe Character, type: :model do
  # Associations
  it { is_expected.to have_one(:characteristic).dependent(:destroy) }

  # Validations
  it { is_expected.to validate_presence_of(:Name) }
  it { is_expected.to validate_length_of(:Name).is_at_least(3).is_at_most(50) }

  it { is_expected.to validate_presence_of(:Birthplace) }
  it { is_expected.to validate_length_of(:Birthplace).is_at_most(100) }

  it { is_expected.to validate_presence_of(:Pronouns) }
  it { is_expected.to validate_inclusion_of(:Pronouns).in_array(%w[He/Him She/Her They/Them]) }

  it { is_expected.to validate_presence_of(:Ocupation) }
  it { is_expected.to validate_length_of(:Ocupation).is_at_most(50) }

  it { is_expected.to validate_presence_of(:Residance) }
  it { is_expected.to validate_length_of(:Residance).is_at_most(100) }

  it { is_expected.to validate_presence_of(:Age) }
  it { is_expected.to validate_numericality_of(:Age).only_integer }
  it { is_expected.to validate_numericality_of(:Age).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(150) }
end
