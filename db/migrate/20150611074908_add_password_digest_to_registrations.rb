class AddPasswordDigestToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :password_digest, :string
  end
end
