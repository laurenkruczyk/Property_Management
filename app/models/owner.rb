class Owner < ActiveRecord::Base
  has_many :buildings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}

   def full_name
    "#{first_name} #{last_name}"
  end
  
end