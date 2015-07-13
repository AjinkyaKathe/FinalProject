class Registration < ActiveRecord::Base
  def new
  end
  has_secure_password
end
