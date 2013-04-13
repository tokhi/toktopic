class Event < ActiveRecord::Base
  attr_accessible :name, :topic, :protocol
end
