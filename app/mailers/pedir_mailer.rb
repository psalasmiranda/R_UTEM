class PedirMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pedir_mailer.pedir.subject
  #
  default from: "servicio.reutilizar@gmail.com"
  def pedir(producto)
    @producto=producto
    mail to: @producto.user.email, subject: "Han solicitado un producto publicado!"

  end
end
