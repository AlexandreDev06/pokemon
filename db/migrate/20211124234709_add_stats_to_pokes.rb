class AddStatsToPokes < ActiveRecord::Migration[6.1]
  def change
    add_column :pokes, :image, :string
    add_column :pokes, :hp, :string
    add_column :pokes, :attack, :string
    add_column :pokes, :defense, :string
    add_column :pokes, :special_attack, :string
    add_column :pokes, :special_defense, :string
    add_column :pokes, :speed, :string
  end
end
