FactoryGirl.define do
  factory :user do
    user_name('Athena')
    email('athena@athena.com')
    password('mycoolpass')
    password_confirmation('mycoolpass')
  end
end
