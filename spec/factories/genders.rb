# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gender_man, class: Gender do |g|
    g.gender_code "1"
    g.caption "Man"
  end
  factory :gender_woman, class: Gender do |w|
    w.gender_code "2"
    w.caption "Woman"
  end
end
