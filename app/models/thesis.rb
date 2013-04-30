class Thesis < ActiveRecord::Base
  attr_accessible :abstract, :bibliography, :description, :title, :year
  belongs_to :semester
  belongs_to :user
end
