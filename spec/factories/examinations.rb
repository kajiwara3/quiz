# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :examination_before, class: Examination do |e|
    e.name 'examination_before'
    e.entry_capasity '10'
    e.passing_grade '80'
    e.start_at 1.days.from_now
    e.end_at 2.days.from_now
  end
  factory :examination_in_service, class: Examination do |e|
    e.name 'examination_in_service'
    e.entry_capasity '10'
    e.passing_grade '80'
    e.start_at 1.days.ago
    e.end_at 2.days.from_now
  end
  factory :examination_end, class: Examination do |e|
    e.name 'examination_end'
    e.entry_capasity '10'
    e.passing_grade '80'
    e.start_at 2.days.ago
    e.end_at 1.days.ago
  end
end
