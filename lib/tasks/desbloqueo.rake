namespace :desbloqueo do
  desc "TODO"
  task penalizacion: :environment do


    @user= User.all
    @user.each do |user|
    if user.bloqueo == "Bloqueado"
      if user.penalizar > 10
      user.penalizar = 0
      user.bloqueo = "Desbloqueado"
      user.save
      DesbloqueoMailer.desbloqueo(user).deliver

      end
    end
  end

  end

end
