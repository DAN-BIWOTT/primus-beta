class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image
  has_many :teachers
  has_many :subjects
  has_many :students
  has_many :staffs
  has_many :libraries
  has_many :departments
  has_many :exams
end
