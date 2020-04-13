class BloqueoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.bloqueo_mailer.bloqueo.subject
  #   notificacion de bloqueo de cuenta
  default from: "servicio.reutilizar@gmail.com"
    def bloqueo(user)

      @user=user
      mail to: @user.email, subject: "tu cuenta a sido bloqueada por incumplir normas"

  end
end
