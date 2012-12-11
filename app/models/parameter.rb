class Parameter < ActiveRecord::Base
  belongs_to :sample
  has_many :custom_parameters, dependent: :destroy
  accepts_nested_attributes_for :custom_parameters, :reject_if => :all_blank, :allow_destroy => true
  attr_accessible :custom_parameters_attributes, :b2h6h2, :base, :bias, :ch4, :h2, :holder, :n2, :name, :p, :pmw, :sample_id, :tc, :time

  validates_presence_of :name
  validates_numericality_of :b2h6h2, :bias, :ch4, :h2, :n2, :p, :pmw, :tc, allow_nil: true
end
