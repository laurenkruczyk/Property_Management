require 'spec_helper'

feature 'delete an owner', %q{
  As a real estate associate
  I want to correlate an owner with buildings
  So that I can refer back to pertinent information
  } do
    
  scenario 'I can delete an owner' do
    FactoryGirl.create(:owner, first_name: 'Bob')
    FactoryGirl.create_list(:owner, 10)
    visit owners_path
    owner_count = Owner.count
    expect(page).to have_content('Bob Smith')
    click_on 'Destroy Bob Smith'
    expect(page).to_not have_content('Bob Smith')
    expect(Owner.count).to eql(owner_count - 1)
  end
end
