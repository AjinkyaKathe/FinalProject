class AddRememberDigestToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :remember_digest, :string
  end
end
