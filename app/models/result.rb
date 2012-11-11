class Result < ActiveRecord::Base
  belongs_to :sample
  has_many :attachments, dependent: :destroy
  accepts_nested_attributes_for :attachments
  attr_accessible :description, :attachments_attributes, :name, :sample_id
  validates_presence_of :name
  
end
