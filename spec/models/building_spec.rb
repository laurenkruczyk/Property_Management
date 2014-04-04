require 'spec_helper'

describe Building do
  it {should validate_presence_of(:address)}
  it {should validate_presence_of(:city)}
  it {should validate_presence_of(:state)}
  it {should validate_presence_of(:postal_code)}
  it {should validate_presence_of(:owner)}
  it {should belong_to(:owner)}
  it {should ensure_inclusion_of(:state).in_array(Building::STATES)}
end