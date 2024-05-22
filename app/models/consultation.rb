class Consultation < ApplicationRecord
  belongs_to :clinician, foreign_key: "clinician_id", class_name: "User"
  belongs_to :user, foreign_key: "user_id", class_name: "User"
  has_one :chatroom

end
