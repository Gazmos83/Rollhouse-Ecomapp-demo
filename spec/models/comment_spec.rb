require 'rails_helper'

describe Comment do
    context "when the comment is being validated" do
        it "comment is valid when body, user, product, and rating are present" do
            @comment = FactoryBot.build(:comment)
            expect(@comment).to be_valid
        end

        it "comment is invalid without a body" do
            @comment = FactoryBot.build(:comment, body: nil)
            expect(@comment).not_to be_valid
        end

        it "comment is invalid without a user" do
            @comment = FactoryBot.build(:comment, user: nil)
            expect(@comment).not_to be_valid
        end

        it "comment is invalid without a product" do
            @comment = FactoryBot.build(:comment, product: nil)
            expect(@comment).not_to be_valid
        end

        it "comment is invalid without a rating" do
            @comment = FactoryBot.build(:comment, rating: nil)
            expect(@comment).not_to be_valid
        end

        it "comment is invalid if rating is not integer" do
            @comment = FactoryBot.build(:comment, rating: "I am not an integer")
            expect(@comment).not_to be_valid
        end
    end
end
