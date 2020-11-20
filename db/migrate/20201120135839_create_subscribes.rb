class CreateSubscribes < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribes do |t|
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
