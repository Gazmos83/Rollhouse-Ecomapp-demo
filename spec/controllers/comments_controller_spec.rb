require 'rails_helper'

describe CommentsController, type: :controller do

  before do
    @user = User.create!(email: "peter@example.com", password: "1234567890")
  end

  let(:product){ Product.create!(name: "Malapascua")}

    context 'when a user is logged in' do
     before do
       sign_in @user
     end

     it 'can create comment' do
       post :create, params: { product_id: product.id, comment: { body: "beautiful", rating: 5 } }
       expect(response).to have_http_status(302)
     end
   end
  end
