class Recording < ApplicationRecord
  belongs_to :user
  has_many :results
  has_many :meals, through: :results

  THRESHOLDS_UPPER_BOUND = 7.0
  THRESHOLDS_LOWER_BOUND = 4.5

end
