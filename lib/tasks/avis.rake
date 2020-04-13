namespace :avis do
  desc "TODO"
  task eval: :environment do
    fecha = DateTime.now
    @evaluacionaviso=Evaluacionaviso.all
    @evaluacionavisos.each do |evaluacionaviso|
    if fecha.to_i > evaluacionaviso.m.to_i
      if evaluacionaviso.d == "Contactado"
      AvisoMailer.encuesta(evaluacionaviso).deliver
    end
    end
  end


  end

end
