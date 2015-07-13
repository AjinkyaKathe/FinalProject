class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
