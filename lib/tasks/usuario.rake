namespace :usuario do
  desc "TODO"
  task solicitante: :environment do

    @encuestasolicitante= Encuestasolicitante.all
    @encuestasolicitante.each do |encuestasolicitante|
    fechab = encuestasolicitante.horapedido.to_i
    fecha = DateTime.now
    fecha = fecha.to_i
    if fechab > fecha
      if encuestasolicitante.estadopro == "Solicitado"
      SolicitanteMailer.solicitante(encuestasolicitante).deliver
      SolicitanteMailer.cambio(encuestasolicitante).deliver
      end
    end

  end
  end

end
