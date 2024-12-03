require 'rails_helper'

RSpec.describe "characteristics/new", type: :view do
  before(:each) do
    assign(:characteristic, Characteristic.new(
      Strength: 1,
      Dexterity: 1,
      Constitution: 1,
      Appearance: 1,
      Power: 1,
      Luck: 1,
      Size: 1,
      Intelligence: 1,
      Education: 1,
      Character: nil
    ))
  end

  it "renders new characteristic form" do
    render

    assert_select "form[action=?][method=?]", characteristics_path, "post" do

      assert_select "input[name=?]", "characteristic[Strength]"

      assert_select "input[name=?]", "characteristic[Dexterity]"

      assert_select "input[name=?]", "characteristic[Constitution]"

      assert_select "input[name=?]", "characteristic[Appearance]"

      assert_select "input[name=?]", "characteristic[Power]"

      assert_select "input[name=?]", "characteristic[Luck]"

      assert_select "input[name=?]", "characteristic[Size]"

      assert_select "input[name=?]", "characteristic[Intelligence]"

      assert_select "input[name=?]", "characteristic[Education]"

      assert_select "input[name=?]", "characteristic[Character_id]"
    end
  end
end
