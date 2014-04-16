class Review < ActiveRecord::Base
  validates :body, presence: true, length: { maximum: 200}
  validates :score, presence: true, :inclusion => 0..5
end
