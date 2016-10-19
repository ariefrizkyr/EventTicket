class Registration < ActiveRecord::Base
  before_create :randomize_id, :order_code

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
  validates :order_number, presence: true, allow_blank: true
  validates :ticket_type, presence: true
  validates :status, presence: false, allow_blank: true

  private
    def randomize_id
      begin
        self.id = SecureRandom.random_number(1_000_000)
      end while Registration.where(id: self.id).exists?
    end

    def order_code
      subid = id.to_s.each_char.first(3).join
      self.order_number = subid
    end
end
