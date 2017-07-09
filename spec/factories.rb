FactoryGirl.define do
  factory :user do
    user_name 'Athena'
    email 'athena@athena.com'
    password 'mycoolpass'
    password_confirmation 'mycoolpass'
  end

  factory :service, class: Service do
    name 'Martini'
    description 'Cold, dirty, & dry'
    price '360'
  end

  factory :review, class: Service do
    content 'nomnom'
    author 'Nosher'
  end
end
