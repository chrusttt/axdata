class CustomParameter < ActiveRecord::Base
  belongs_to :parameter 
  attr_accessible :name, :parameter_id, :value

  validates_presence_of :name, :value
end
