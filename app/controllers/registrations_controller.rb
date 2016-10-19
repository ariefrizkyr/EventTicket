class RegistrationsController < ApplicationController
  before_action :find_registration, only: [:show]

  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.save
      RegistrationMailer.new_registration(@registration).deliver_now
      flash[:success] = "Registration Success!"
      redirect_to @registration
    else
      flash[:error] = "Error occured!"
      render :new
    end
  end

  def show

  end

  private
    def find_registration
      @registration = Registration.find(params[:id])
    end

    def registration_params
      params.require(:registration).permit(:title, :first_name, :last_name, :position,
                                           :institution, :address, :city, :province,
                                           :country, :postal_code, :email, :phone_number,
                                           :order_number, :ticket_type, :status)
    end
end
