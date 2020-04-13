class NoadmiMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.noadmi_mailer.noadmi.subject
  #
  #   correo para permiso denegado de administracion
  default from: "servicio.reutilizar@gmail.com"
    def noadmi(user)

      @user=user
      mail to: @user.email, subject: "se han quitado los derecho de Administrador"

  end
end
