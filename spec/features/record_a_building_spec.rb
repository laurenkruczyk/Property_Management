require 'spec_helper'

feature 'record a building', %q{
    As a real estate associate
    I want to record a building
    So that I can refer back to pertinent information
} do

  scenario 'I can record a building' do
    owner = FactoryGirl.create(:owner)
    visit new_building_path
    fill_in 'First name', with: 'Bob'
    fill_in 'Address', with: '123 Maple St.'
    fill_in 'City', with: 'Boston'
    select 'MA', from: 'State'
    fill_in 'Postal code', with: '02140'
    select 'MA', from: 'State'
    select owner.full_name, from: 'Owner'

    click_on 'Create Building'

    expect(page).to have_content('Successfully recorded building')
    expect(page).to have_content('Bob')
    expect(page).to have_content(owner.full_name)
  end
end