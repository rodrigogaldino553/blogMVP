class AddAdminRoleToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :boolean
    rename_column :posts, :admin_id, :user_id
    # change field admin references from posts
  end
end
