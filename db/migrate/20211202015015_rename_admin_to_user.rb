class RenameAdminToUser < ActiveRecord::Migration[6.1]
  def change
    rename_table :admins, :users
  end
end
