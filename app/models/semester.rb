class Semester < ActiveRecord::Base
  attr_accessible :department, :description, :name
  has_many :courses
  has_many :theses # thesis
end
