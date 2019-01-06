class Teacher < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  validates  :firstName,presence: true
  validates  :lastName,presence: true
  validates  :email,presence: true, uniqueness: true
  validates  :joinDate,presence: false
  validates  :password,presence: false
  validates  :designation,presence: false
  validates  :department,presence: true
  validates  :gender,presence: true
  validates  :phoneNumber,presence: true
  validates  :birthDate,presence: false
  validates  :address,presence: true
  validates  :image,presence: true
  validates  :education,presence: true
end
