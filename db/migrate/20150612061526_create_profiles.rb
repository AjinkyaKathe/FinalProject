class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :country
      t.string :state
      t.string :intrest

      t.timestamps null: false
    end
  end
end
