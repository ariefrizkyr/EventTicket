class CreateConfirmations < ActiveRecord::Migration
  def change
    create_table :confirmations do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :amount
      t.string :bank_name
      t.string :account_number
      t.string :account_name
    end
  end
end
