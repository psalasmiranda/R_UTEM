class AprobacionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.aprobacion_mailer.aprobacion.subject
  #
  default from: "servicio.reutilizar@gmail.com"
  def aprobacion(producto)
    @producto=producto
    mail to: @producto.user.email, subject: "Aprobación de tu producto!"

  end
end
