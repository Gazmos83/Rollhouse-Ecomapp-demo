

FactoryBot.define do
    sequence(:email) {|n| "test#{n}@example.com"}

    factory :user do
      email
      password "password"
      first_name "Joseph"
      last_name "Kerr"
      admin false
    end

  end
