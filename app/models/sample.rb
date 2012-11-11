class Sample < ActiveRecord::Base
  belongs_to :user
  has_many :parameters, dependent: :destroy
  accepts_nested_attributes_for :parameters
  has_many :results, dependent: :destroy
  attr_accessible :parameters_attributes, :date, :description, :name, :pic, :state, :user_id
  mount_uploader :pic, PicUploader
  STATES = ['Default', 'Out', 'Out suspect back', 'Need SEM/Raman', 'Lost']
  STATES_IN_PLACE = [['Default', 'Default'], ['Out','Out'], ['Out suspect back','Out suspect back'], ['Need SEM/Raman','Need SEM/Raman'], ['Lost', 'Lost']]
  validates_presence_of :name, :state
  has_and_belongs_to_many :experiments
end
