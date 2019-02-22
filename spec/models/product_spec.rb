require 'rails_helper'

      describe Product do

        context "when the product has comments" do
          let(:product) { Product.create!(name: "race bike")}
          let(:user) { User.create!(email: "kevin.louis.dath@gmail.com", password: "123456")}
          before do

            product.comments.create!(rating: 1, user: user, body: "I hate this place")
            product.comments.create!(rating: 3, user: user, body: "Not the best not the worst")
            product.comments.create!(rating: 5, user: user, body: "I had such a good time!")
          end

          it "returns the average rating of all comments" do

             expect(product.average_rating).to eq 3
          end

          it "is not valid without a comment" do
            expect(Product.new(description: "this place is beautiful")).not_to be_valid
          end
      end
end
