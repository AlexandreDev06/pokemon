class Team < ApplicationRecord
  belongs_to :trainer
  has_many :pokes

  def full?
    if pokemons >= 3
      true
    else
      false
    end
  end
end
