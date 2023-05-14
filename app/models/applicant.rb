class Applicant < ApplicationRecord
  has_person_name
  belongs_to :job

  validates_presence_of :first_name, :last_name, :email

  has_one_attached :resume

  enum stage: {
    application: "application",
    interview: "interview",
    offer: "offer",
    hired: "hired"
  }

  enum status: {
    active: "active",
    inactive: "inactive"
  }



end
