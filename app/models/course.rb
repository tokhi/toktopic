class Course < ActiveRecord::Base
  attr_accessible :description, :title, :type
  has_many :projects
end
