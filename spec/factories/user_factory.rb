FactoryBot.define do
  factory :user do
    email {"peter@example.com"}
    password {"1234567890"}
    first_name {"Peter"}
    last_name {"Example"}
    admin false
  end

  factory :admin, class: User do
    email {"peter@example.com"}
    password {"1234567890"}
    first_name {"Peter"}
    last_name {"Fox"}
    admin true
  end

end
