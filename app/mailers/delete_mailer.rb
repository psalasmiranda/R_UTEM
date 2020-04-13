class DeleteMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.delete_mailer.delete.subject
  #
  default from: "servicio.reutilizar@gmail.com"
  def delete(producto)
    @producto=producto
    mail to: @producto.user.email, subject: "Tu producto ha sido eliminado "

  end
end
