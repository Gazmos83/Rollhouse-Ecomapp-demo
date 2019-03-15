
FactoryBot.define do

    factory :comment do
        user #association :user, factory: :user
        product #association :product, factory: :product
        body "I love this place"
        rating 5
    end
end
