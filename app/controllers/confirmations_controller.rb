class ConfirmationsController < ApplicationController
  def new
    @confirmation = confirmations.build
  end

  def create
    @confirmation = confirmations.build(confirmation_params)

    if @confirmation.save
      flash[:success] = "confirmation Success!"
      redirect_to root_path
    else
      flash[:error] = "Error occured!"
      render :new
    end
  end

  private
    def confirmation_params
      params.require(:confirmation).permit(:title, :first_name, :last_name, :email,
                                           :phone_number, :amount, :account_name,
                                           :account_number, :bank_name)
    end
end
