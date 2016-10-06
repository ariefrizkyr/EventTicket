class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.save
      flash[:success] = "Registration Success!"
      redirect_to root_path
    else
      flash[:error] = "Error occured!"
      render :new
    end
  end

  private
    def registration_params
      params.require(:registration).permit(:title, :first_name, :last_name, :position,
                                           :institution, :address, :city, :province,
                                           :country, :postal_code, :email, :phone_number)
    end
end
