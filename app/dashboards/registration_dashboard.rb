require "administrate/base_dashboard"

class RegistrationDashboard < Administrate::BaseDashboard
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
    position: Field::String,
    institution: Field::String,
    address: Field::Text,
    city: Field::String,
    province: Field::String,
    country: Field::String,
    postal_code: Field::String,
    email: Field::String,
    phone_number: Field::String,
    order_number: Field::String,
    status: Field::Boolean,
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
    :position,
    :institution,
    :address,
    :city,
    :province,
    :country,
    :postal_code,
    :email,
    :phone_number,
    :order_number,
    :status,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :first_name,
    :last_name,
    :position,
    :institution,
    :address,
    :city,
    :province,
    :country,
    :postal_code,
    :email,
    :phone_number,
    :order_number,
    :status,
  ].freeze

  # Overwrite this method to customize how registrations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(registration)
  #   "Registration ##{registration.id}"
  # end
end
