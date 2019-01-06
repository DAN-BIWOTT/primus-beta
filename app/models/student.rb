class Student < ApplicationRecord
	belongs_to :user
	has_one_attached :image

	validates  :firstName,presence: true
	validates  :lastName,presence: true
	validates  :email,presence: true, uniqueness: true
	validates  :regDate,presence: false
	validates  :sClass,presence: true
	validates  :gender,presence: true
	validates  :mobileNumber,presence: true
	validates  :parentName,presence: true
	validates  :parentNumber,presence: true
	validates  :birth,presence: false
	validates  :image,presence: true
	validates  :address,presence: true
end