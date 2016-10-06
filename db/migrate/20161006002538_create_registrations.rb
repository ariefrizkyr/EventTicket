class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :institution
      t.text :address
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code
      t.string :email
      t.string :phone_number
    end
  end
end
