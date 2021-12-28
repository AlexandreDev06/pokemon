class Team < ApplicationRecord
  belongs_to :trainer
  has_many :pokes, dependent: :destroy

  def full?
    pokemons >= 3
  end
end
