class Experiment < ActiveRecord::Base
  attr_accessible :description, :name, :sample_ids
  has_and_belongs_to_many :samples
  accepts_nested_attributes_for :samples
  validates_presence_of :name
end
