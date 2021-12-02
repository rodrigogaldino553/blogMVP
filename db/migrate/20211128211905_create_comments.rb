class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.references :post, null: false, foreign_key: true
      t.references :admin, null: false, foreign_key: true # aquele admin ali vai mudar para user

      t.timestamps
    end
  end
end
