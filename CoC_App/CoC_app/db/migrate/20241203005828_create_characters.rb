class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :Name
      t.string :Birthplace
      t.string :Pronouns
      t.string :Ocupation
      t.string :Residance
      t.integer :Age

      t.timestamps
    end
  end
end
