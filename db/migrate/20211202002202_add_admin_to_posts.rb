class AddAdminToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :admin, null: false, foreign_key: true
  end
end
