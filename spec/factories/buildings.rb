
FactoryGirl.define do
  factory :building do
    address '123 Maple St.'
    city 'Boston'
    state 'MA'
    postal_code '02140'
    owner
  end
end