class AddCharacterIdToCharacteristics < ActiveRecord::Migration[6.1]
  def change
    add_reference :characteristics, :character, foreign_key: true, null: false
  end
end