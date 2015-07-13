require 'rails_helper'

RSpec.describe Registration, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "orders by name" do
    ak=Registration.create!(name : "Ajinkya",address : "Pune" ,email : "ajinkya.kathe@cuelogic.co.in",password : "12345")
    chinu=Registration.create!(name : "chinmay",address : "Sangamner" ,email : "chinmay@gmail.com",password : "12345")

    expect(User.ordered_by_name).to eq([ak,chinu])
  end
end
