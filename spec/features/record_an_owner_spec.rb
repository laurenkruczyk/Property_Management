require 'spec_helper'

feature 'record an owner', %q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
} do

  scenario 'I can record an owner' do
    visit new_owner_path
    fill_in 'First name', with: 'Bob'
    fill_in 'Last name', with: 'Smith'
    fill_in 'Email', with: 'bob_smith@gmail.com'

    click_on 'Create Owner'
    expect(page).to have_content('Successfully recorded owner')
    expect(page).to have_content('Bob')
  end
end