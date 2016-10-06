require "administrate/base_dashboard"

class ConfirmationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    email: Field::String,
    phone_number: Field::String,
    amount: Field::String,
    bank_name: Field::String,
    account_number: Field::String,
    account_name: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :first_name,
    :last_name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :first_name,
    :last_name,
    :email,
    :phone_number,
    :amount,
    :bank_name,
    :account_number,
    :account_name,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :first_name,
    :last_name,
    :email,
    :phone_number,
    :amount,
    :bank_name,
    :account_number,
    :account_name,
  ].freeze

  # Overwrite this method to customize how confirmations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(confirmation)
  #   "Confirmation ##{confirmation.id}"
  # end
end
