class CreateSubscriber < ActiveRecord::Migration[6.1]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email
      t.boolean :active
      t.datetime :subscribed_at
      t.boolean :terms_conditions

      t.timestamps
    end
  end
end
