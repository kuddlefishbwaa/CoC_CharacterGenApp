require 'rails_helper'

RSpec.describe "characteristics/index", type: :view do
  before(:each) do
    assign(:characteristics, [
      Characteristic.create!(
        Strength: 2,
        Dexterity: 3,
        Constitution: 4,
        Appearance: 5,
        Power: 6,
        Luck: 7,
        Size: 8,
        Intelligence: 9,
        Education: 10,
        Character: nil
      ),
      Characteristic.create!(
        Strength: 2,
        Dexterity: 3,
        Constitution: 4,
        Appearance: 5,
        Power: 6,
        Luck: 7,
        Size: 8,
        Intelligence: 9,
        Education: 10,
        Character: nil
      )
    ])
  end

  it "renders a list of characteristics" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(10.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
