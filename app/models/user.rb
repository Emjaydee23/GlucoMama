class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :recordings
  has_many :messages
  has_many :patient_consultations, class_name: "Consultation", foreign_key: "clinician_id"
  has_many :consultations, class_name: "Consultation", foreign_key: "user_id"

  after_save :set_clinician unless :clinician?

  def set_clinician
    @clinician = User.where(clinician: true).sample
    @consultation = Consultation.create(user: self, clinician: @clinician) # random clinician
    @chatroom = Chatroom.create(title: "#{@consultation.user.first_name}/#{@consultation.clinician.first_name}", consultation: @consultation)
  end


  def clinician?
    self.clinician
  end

end
