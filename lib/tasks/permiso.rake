namespace :permiso do
  desc "TODO"
  task solicitados: :environment do
    @user= User.all
    @user.each do |user|
      user.cantidad= 0
      user.penalizar=0
      user.save
    end
  end

end
