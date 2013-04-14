# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member do
    firstname "Barack"
    mi "H"
    lastname "Obama"
    sequence :badgeno do |n|
      "#{n}"
    end
    sequence :ssn do |n|
      sprintf("%9d", n)
    end
  end
end
