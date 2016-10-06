class Confirmation < ActiveRecord::Base
  validates :title, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
  validates :amount, presence: true, uniqueness: true
  validates :bank_name, presence: true
  validates :account_name, presence: true
  validates :account_number, presence: true
end
