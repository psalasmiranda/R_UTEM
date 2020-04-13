class SolicitarMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.solicitar_mailer.solicitar.subject
  #
  default from: "servicio.reutilizar@gmail.com"
    def solicitar(producto)
    
      @producto=producto
      mail to: @producto.email, subject: "Información de donador"

  end
end
