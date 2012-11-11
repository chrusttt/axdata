class AddResultToAttachments < ActiveRecord::Migration
  def change
    add_column :attachments, :result_id, :integer
  end
end
