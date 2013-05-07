class Course < ActiveRecord::Base
  attr_accessible :description, :title, :course_type
  has_many :projects
end
