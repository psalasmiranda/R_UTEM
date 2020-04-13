namespace :bloqueo do
  desc "TODO"
  task penalizar: :environment do

    @user= User.all
    @user.each do |user|
    if user.bloqueo == "desbloqueado"
      if user.penalizar > 10
      user.bloqueo = "Bloqueado"
      user.save
      BloqueoMailer.bloqueo(user).deliver

      end
    end
  end
  end

end
