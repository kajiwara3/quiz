# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :administrator do
    name 'test_admin'
    email 'test_admin@a.jp'
    password 'password'
    encrypted_password 'password'
  end
end
