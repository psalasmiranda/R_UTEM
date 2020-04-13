class AvisoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.aviso_mailer.encuesta.subject
  #


  default from: "servicio.reutilizar@gmail.com"
    def encuesta(evaluacionaviso)

      @evaluacionaviso=evaluacionaviso
      mail to: @evaluacionaviso.e, subject: "tienes una evaluación pendiente"

  end
end
