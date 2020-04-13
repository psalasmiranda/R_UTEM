class EliminarMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.eliminar_mailer.eliminar.subject
  #
  default from: "servicio.reutilizar@gmail.com"
    def eliminar(user)

      @user=user
      mail to: @user.email, subject: "tu cuenta a sido eliminada"

  end
end
