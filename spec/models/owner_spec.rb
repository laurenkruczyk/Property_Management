require 'spec_helper'

describe Owner do
  before(:each) do
    FactoryGirl.create(:owner)
  end
  it {should validate_presence_of(:first_name)}
  it {should validate_presence_of(:last_name)}
  it {should validate_presence_of(:email)}
  it {should validate_uniqueness_of(:email)}
  it {should have_many(:buildings)}

  context '#full_name' do
    it 'returns an owners full name' do
      owner = FactoryGirl.create(:owner)
      expect(owner.full_name).to eql("#{owner.first_name} #{owner.last_name}")
    end
  end
end