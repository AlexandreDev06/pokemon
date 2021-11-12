class CreatePokes < ActiveRecord::Migration[6.1]
  def change
    create_table :pokes do |t|
      t.string :name
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end