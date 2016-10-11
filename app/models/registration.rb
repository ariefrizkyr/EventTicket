class Registration < ActiveRecord::Base
  before_create :randomize_id

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

  private
    def randomize_id
      begin
        self.id = SecureRandom.random_number(1_000_000)
      end while Registration.where(id: self.id).exists?
    end
end
