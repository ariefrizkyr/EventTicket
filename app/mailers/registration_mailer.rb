class RegistrationMailer < ActionMailer::Base

  def new_registration(registration)
    @registration = registration

    mail(to: @registration.email,
         from: "Arief R Ramadhan<admin@ariefrizky.com>",
         subject: '[EventTicket] You are Registered. Please Confirm The Payment'
    )
  end
end
