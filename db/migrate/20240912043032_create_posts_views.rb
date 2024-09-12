class CreatePostsViews < ActiveRecord::Migration[6.1]
  def change
    create_table :posts_views do |t|
      t.references :post, null: false, foreign_key: true
      t.references :subscriber, null: false, foreign_key: true

      t.timestamps
    end
  end
end
