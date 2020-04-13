class ContactoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contacto_mailer.copia.subject
  #
  default from: "servicio.reutilizar@gmail.com"

  def copia(aviso)
    @aviso=aviso
    mail to: @aviso.user, subject: "información del contacto!"

  end


end
