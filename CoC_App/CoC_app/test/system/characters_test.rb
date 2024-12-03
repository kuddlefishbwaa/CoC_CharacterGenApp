require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "should create character" do
    visit characters_url
    click_on "New character"

    fill_in "Age", with: @character.Age
    fill_in "Birthplace", with: @character.Birthplace
    fill_in "Name", with: @character.Name
    fill_in "Ocupation", with: @character.Ocupation
    fill_in "Pronouns", with: @character.Pronouns
    fill_in "Residance", with: @character.Residance
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "should update Character" do
    visit character_url(@character)
    click_on "Edit this character", match: :first

    fill_in "Age", with: @character.Age
    fill_in "Birthplace", with: @character.Birthplace
    fill_in "Name", with: @character.Name
    fill_in "Ocupation", with: @character.Ocupation
    fill_in "Pronouns", with: @character.Pronouns
    fill_in "Residance", with: @character.Residance
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "should destroy Character" do
    visit character_url(@character)
    click_on "Destroy this character", match: :first

    assert_text "Character was successfully destroyed"
  end
end
