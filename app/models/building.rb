class Building < ActiveRecord::Base
  belongs_to :owner, dependent: :destroy

  STATES = %w(AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY)
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true, inclusion: {in: STATES}
  validates :postal_code, presence: true
  validates :owner, presence: true
end