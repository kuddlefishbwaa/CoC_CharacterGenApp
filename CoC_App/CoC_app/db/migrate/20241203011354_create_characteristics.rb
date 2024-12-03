class CreateCharacteristics < ActiveRecord::Migration[7.1]
  def change
    create_table :characteristics do |t|
      t.integer :Strength
      t.integer :Dexterity
      t.integer :Constitution
      t.integer :Appearance
      t.integer :Power
      t.integer :Luck
      t.integer :Size
      t.integer :Intelligence
      t.integer :Education
      t.references :Character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
