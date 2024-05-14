class Meal < ApplicationRecord
  has_many :results
  has_many :recordings, through: :results

end
