class RegistrationMailer < ActionMailer::Base

  def new_registration(registration)
    @registration = registration

    mail(to: @registration.email,
         from: "IELForum <admin@ielforum.id>",
         subject: '[IELForum] Segera Lakukan Pembayaran'
    )
  end
end
