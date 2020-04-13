class EditarMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.editar_mailer.editar.subject
  #
  default from: "servicio.reutilizar@gmail.com"
  def editar(producto)
    @producto=producto
    mail to: @producto.user.email, subject: "tu producto ha sido modificado!"

  end
end
