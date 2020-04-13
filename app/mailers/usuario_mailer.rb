class UsuarioMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usuario_mailer.usuario.subject
  #   correo para permisos de administracion
  default from: "servicio.reutilizar@gmail.com"
    def usuario(user)

      @user=user
      mail to: @user.email, subject: "se han otorgado derecho de Administrador"

  end
end
