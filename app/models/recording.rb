class Recording < ApplicationRecord
  belongs_to :user
  has_many :results
  has_many :meals, through: :results
  validates :reading, presence: true
  validates :date, presence: true
  validates :time, presence: true
  # format :/(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/

  THRESHOLDS_UPPER_BOUND = 5
  THRESHOLDS_LOWER_BOUND = 3

end
