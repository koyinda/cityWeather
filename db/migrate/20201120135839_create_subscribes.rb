class CreateSubscribes < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribes do |t|
      t.string :email, null: false
      t.string :location, null: false

      t.timestamps
    end
  end
end
