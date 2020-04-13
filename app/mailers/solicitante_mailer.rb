class SolicitanteMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.solicitante_mailer.solicitante.subject
  #
  default from: "servicio.reutilizar@gmail.com"
      def solicitante(encuestasolicitante)
        @encuestasolicitante=encuestasolicitante
        mail to: @encuestasolicitante.emailsol, subject: "Encuesta sobre producto solicitado"
    end
    def cambio(encuestasolicitante)
      @encuestasolicitante=encuestasolicitante
      @encuestasolicitante.estadopro= "Pendiente"
      @encuestasolicitante.save
  end

end
