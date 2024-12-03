require 'rails_helper'

RSpec.describe 'Characteristics Management', type: :system do
  before do
    driven_by(:rack_test)
  end

  let!(:character) { create(:character) } # Automatically creates a characteristic via callback

  it 'displays the characteristic for a character' do
    visit character_path(character)

    expect(page).to have_content('Strength')
    expect(page).to have_content(character.characteristic.Strength)
    expect(page).to have_content('Dexterity')
    expect(page).to have_content(character.characteristic.Dexterity)
  end

  it 'edits the characteristic for a character' do
    visit edit_character_path(character)

    fill_in 'Strength', with: '15'
    fill_in 'Dexterity', with: '10'
    click_button 'Update Character'

    expect(page).to have_content('15')
    expect(page).to have_content('10')
  end
end