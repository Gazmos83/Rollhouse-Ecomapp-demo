

require 'rails_helper'

describe OrdersController, type: :controller do
  before do
    @user = User.create!(email: "peter@example.com", password: "1234567890")
  end
    let(:product) { Product.create!(name:"Nunya bidness", description:"it's so warm here", image_url:"row (1).jpg" )}

    let(:order) { Order.create!(user: @user, product: product, total: product.price) }


    describe 'GET #show' do
      context 'when a user is logged in' do
        before do
          sign_in @user
        end

          it "loads correct the user's order" do
            get :show, params: {id: order.id}
            expect(response).to be_ok
            expect(assigns(:order)).to eq order
          end
      end
    end
  end
