namespace :envio do
  desc "TODO"
  task donador: :environment do



      @encuestadonado= Encuestadonado.all
      @encuestadonado.each do |encuestadonado|
      fechab = encuestadonado.horapedido.to_i
      fecha = DateTime.now
      fecha = fecha.to_i
      if fechab >fecha
        if encuestadonado.estadopro == "Solicitado"
        DonadorMailer.donador(encuestadonado).deliver
        DonadorMailer.cambio(encuestadonado).deliver
      end
      end
    end
  end
end
