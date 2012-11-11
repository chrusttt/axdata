class Attachment < ActiveRecord::Base
  belongs_to :result
  attr_accessible :file, :result_id
  mount_uploader :file, ResultUploader
end
