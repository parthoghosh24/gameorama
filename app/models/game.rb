class Game < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :boxshot, presence: true
  has_many :reviews, foreign_key: "game_id", dependent: :destroy
end
