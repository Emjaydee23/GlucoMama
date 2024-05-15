class Recording < ApplicationRecord
  belongs_to :user
  has_many :results
  has_many :meals, through: :results
  validates :reading, presence: true
  validates :date, presence: true
  validates :time, presence: true

  THRESHOLDS_UPPER_BOUND = 5
  THRESHOLDS_LOWER_BOUND = 3

end
