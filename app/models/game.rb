class Game < ActiveRecord::Base
  has_many :results
  has_many :players, through: :results
end
