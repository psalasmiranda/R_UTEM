class ConfirmarMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirmar_mailer.confirmar.subject
  #
  default from: "servicio.reutilizar@gmail.com"
  def confirmar(producto)
    @producto=producto
    mail to: @producto.user.email, subject: "Creación de producto"

  end
end
