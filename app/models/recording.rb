class Recording < ApplicationRecord
  belongs_to :user
  has_many :results
  has_many :meals, through: :results

  THRESHOLDS_UPPER_BOUND = 5
  THRESHOLDS_LOWER_BOUND = 3

end
