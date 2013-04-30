class Project < ActiveRecord::Base
  attr_accessible :date, :description, :protocol, :title
  belongs_to :user
  belongs_to :course
end
