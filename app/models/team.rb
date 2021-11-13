class Team < ApplicationRecord
  belongs_to :trainer
  has_many :pokes
end
