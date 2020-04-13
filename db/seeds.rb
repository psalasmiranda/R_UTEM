# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Información de comunas
User.create(:nombre=>"Programa de",:paterno =>"sustentabilidad", :imagen => nil,
  :materno=>"UTEM",:red_fija=>"", :sexo =>"Masculino",:red_movil=>"",:email=>"servicio.reutilizar@gmail.com",
  :personal =>"Administrativo",:sede =>"Campus Macul", :rol => "Super", :password_confirmation => "reutilizautem1020",
  :password =>"reutilizautem1020", :carrera => "Ingenieria en Informática")
