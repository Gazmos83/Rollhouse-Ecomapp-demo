require 'rails_helper'

describe Order do

  let(:product) { Product.create!(name:"Pingu", description:"Waaa waaa", image_url:"Malapascua.jpg" )}

  it "is not valid without a user" do
    expect(Order.new( product: product, total: 1)).not_to be_valid
  end

  it "is not valid without product" do
    expect(Order.new( user: @user,total: 1)).not_to be_valid
  end
end
