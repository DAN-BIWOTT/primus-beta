class Exam < ApplicationRecord
	belongs_to :user
	belongs_to :student

	validates :date, presence: true
	validates :examName, presence: true
	validates :results, presence: true
	validates :english, presence: true
	validates :kiswahili, presence: true
	validates :math, presence: true
	validates :science, presence: true
	validates :social_studies, presence: true
	validates :CRE, presence: true
end
