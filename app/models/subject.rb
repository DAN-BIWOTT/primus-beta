class Subject < ApplicationRecord
	belongs_to :user

	has_one_attached :image
	validates  :image,presence: true
	validates  :subjectName,presence: true
	validates  :subjectDetail,presence: true
	validates  :subjectTeacher,presence: true
	validates  :subjectCapacity,presence: true
	validates  :subjectNumber,presence: true
end
