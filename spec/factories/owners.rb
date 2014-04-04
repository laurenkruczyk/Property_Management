

FactoryGirl.define do
  factory :owner do
    first_name 'Bob'
    last_name 'Smith'
    sequence(:email) {|n| "test#{n}@email"}
  end
end