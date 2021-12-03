class RenameAdminToUserOnCommentTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :admin_id, :user_id
  end
end
