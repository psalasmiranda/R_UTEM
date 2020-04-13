
require 'rufus-scheduler'

scheduler = Rufus::Scheduler::singleton

# jobs go below here.
scheduler.every '1d' do
  system("rake envio:donador")
  system("rake avis:eval")
  system("rake usuario:solicitante")
  system("rake bloqueo:penalizar")

end

scheduler.every '7d'  do
  system("rake permiso:solicitados")
  system("rake desbloqueo:penalizacion")


end
