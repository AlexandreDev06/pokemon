class CreateWilds < ActiveRecord::Migration[6.1]
  def change
    create_table :wilds do |t|
      t.string :name
      t.string :image
      t.string :hp
      t.string :attack
      t.string :defense
      t.string :special_attack
      t.string :special_defense
      t.string :speed

      t.timestamps
    end
  end
end
