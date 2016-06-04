# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :violation do
    inspection_id 1
    category "MyString"
    violation_date "2016-06-04"
    violation_closed_date "2016-06-04"
    type ""
  end
end
