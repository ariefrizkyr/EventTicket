class Registration < ActiveRecord::Base
  
  validates :title, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :position, presence: true
  validates :institution, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :country, presence: true
  validates :postal_code, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true

end
