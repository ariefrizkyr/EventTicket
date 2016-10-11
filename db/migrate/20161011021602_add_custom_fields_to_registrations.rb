class AddCustomFieldsToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :order_code, :string
    add_column :registrations, :status, :boolean
  end
end
