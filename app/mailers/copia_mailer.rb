class CopiaMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.copia_mailer.contacto.subject
  #
    default from: "servicio.reutilizar@gmail.com"
  def contacto(aviso)
    @aviso=aviso
    a=User.find(aviso.user_id)
    mail to: a.email , subject: "Se quieren contactar contigo!"

  end
end
