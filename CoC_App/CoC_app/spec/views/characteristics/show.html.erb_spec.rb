require 'rails_helper'

RSpec.describe "characteristics/show", type: :view do
  before(:each) do
    assign(:characteristic, Characteristic.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(//)
  end
end
