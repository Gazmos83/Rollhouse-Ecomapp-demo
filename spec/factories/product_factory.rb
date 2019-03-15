FactoryBot.define do
    sequence(:name) { |n| "productname#{n}" }

    factory :product do
        name
        description "this is a description"
        price 500
        image_url "Malapasr.jpg"
    end
end
