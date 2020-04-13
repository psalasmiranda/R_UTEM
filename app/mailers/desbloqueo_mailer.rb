class DesbloqueoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.desbloqueo_mailer.desbloqueo.subject
  #   notificacion de desbloqueo
  default from: "servicio.reutilizar@gmail.com"
    def desbloqueo(user)

      @user=user
      mail to: @user.email, subject: "tu cuenta a sido desbloqueada"

  end
end
