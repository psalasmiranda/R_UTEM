class DonadorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.donador_mailer.donador.subject
  #
  default from: "servicio.reutilizar@gmail.com"
      def donador(encuestadonado)
        @encuestadonado=encuestadonado
        mail to: @encuestadonado.emaildon, subject: "Encuesta sobre producto solicitado"
    end
    def cambio(encuestadonado)
      @encuestadonado=encuestadonado
      @encuestadonado.estadopro= "Pendiente"
      @encuestadonado.save
  end

end
