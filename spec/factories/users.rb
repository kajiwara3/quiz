# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user1, class: User do |u|
    u.name "user1"
    u.email 'user1@a.jp'
    u.gender {|user| user.association(:gender_man)}
    password 'password'
    encrypted_password 'password'
    privacy_agree 'true'
  end
end
