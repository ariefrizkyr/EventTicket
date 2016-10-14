class RegistrationMailer < ActionMailer::Base

  def new_registration(registration)
    @registration = registration

    mail(to: @registration.email,
         from: "IELForum <admin@ielforum.id>",
         subject: '[IELForum] Anda Telah Terdaftar. Segera Lakukan Pembayaran'
    )
  end
end
