class RegistrationsController < ApplicationController
  def new
    @registration = registrations.build
  end

  def create
    @registration = registrations.build(registration_params)

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
      params.require(:registration).permit()
    end
end
