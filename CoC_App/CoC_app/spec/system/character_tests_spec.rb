require 'rails_helper'

RSpec.describe 'Characters Management', type: :system do
  before do
    driven_by(:rack_test) # Use the Rack Test driver for speed; switch to Selenium for JavaScript tests.
  end

  let!(:character) { create(:character) } # Use FactoryBot to create a character

  it 'creates a new character' do
    visit new_character_path

    fill_in 'Name', with: 'Test Character'
    fill_in 'Birthplace', with: 'Test City'
    fill_in 'Pronouns', with: 'They/Them'
    fill_in 'Ocupation', with: 'Warrior'
    fill_in 'Residance', with: 'Test Home'
    fill_in 'Age', with: '25'

    click_button 'Create Character'

    expect(page).to have_content('Test Character')
    expect(page).to have_content('Test City')
    expect(page).to have_content('They/Them')
    expect(page).to have_content('Warrior')
    expect(page).to have_content('Test Home')
    expect(page).to have_content('25')
  end

  it 'displays an existing character' do
    visit character_path(character)

    expect(page).to have_content(character.Name)
    expect(page).to have_content(character.Birthplace)
    expect(page).to have_content(character.Pronouns)
    expect(page).to have_content(character.Ocupation)
    expect(page).to have_content(character.Residance)
    expect(page).to have_content(character.Age)
  end

  it 'edits an existing character' do
    visit edit_character_path(character)

    fill_in 'Name', with: 'Updated Name'
    click_button 'Update Character'

    expect(page).to have_content('Updated Name')
    expect(page).to have_content(character.Birthplace)
  end

  it 'deletes a character' do
    visit characters_path

    expect(page).to have_content(character.Name)
    click_link 'Destroy'

    expect(page).not_to have_content(character.Name)
  end
end

RSpec.describe 'Creating a Character', type: :system do
  it 'allows a user to create a new character with a characteristic' do
    visit new_character_path

    fill_in 'Name', with: 'John Doe'
    fill_in 'Birthplace', with: 'New York'
    fill_in 'Pronouns', with: 'He/Him'
    fill_in 'Ocupation', with: 'Warrior'
    fill_in 'Residance', with: 'Castle Black'
    fill_in 'Age', with: '30'

    # Submit the form
    click_button 'Create Character'

    # Expect the new character to be displayed
    expect(page).to have_content('John Doe')
    expect(page).to have_content('New York')
    expect(page).to have_content('Warrior')

    # Verify the characteristic is created
    expect(page).to have_content('Strength')
    expect(page).to have_content('Dexterity')
  end
end

RSpec.describe 'Editing a Character', type: :system do
  let!(:character) { create(:character, Name: 'Jane Doe') }

  it 'allows a user to edit a character' do
    visit edit_character_path(character)

    fill_in 'Name', with: 'Jane Smith'
    click_button 'Update Character'

    # Expect the updated character details to be displayed
    expect(page).to have_content('Jane Smith')
    expect(page).not_to have_content('Jane Doe')
  end
end

RSpec.describe 'Viewing a Character', type: :system do
  let!(:character) { create(:character, Name: 'Jane Doe') }

  it 'displays the character details' do
    visit character_path(character)

    expect(page).to have_content('Jane Doe')
    expect(page).to have_content(character.Birthplace)
    expect(page).to have_content(character.Pronouns)
  end
end

RSpec.describe 'Deleting a Character', type: :system do
  let!(:character) { create(:character, Name: 'Jane Doe') }

  it 'allows a user to delete a character' do
    visit characters_path

    expect(page).to have_content('Jane Doe')
    click_link 'Destroy'

    # Confirm the character is removed from the list
    expect(page).not_to have_content('Jane Doe')
  end
end