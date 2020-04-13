class AddColumnUservariablesToUsers < ActiveRecord::Migration[5.1]
  def change
    #Información del usuario
    add_column :users, :nombre, :string
    add_column :users, :paterno, :string
    add_column :users, :materno, :string
    add_column :users, :red_fija, :string
    add_column :users, :red_movil, :string
    add_column :users, :sexo, :string
    add_attachment :users, :imagen
    #Información universitarios
    add_column :users, :personal, :string # Estudiante - academicos - administrativo
    add_column :users, :carrera, :string
    add_column :users, :sede, :string

    #Variable se roles de usuario
    add_column :users, :rol, :string  # Administrador - usuario sin permisos
    add_column :users, :bloqueo, :string
    add_column :users, :penalizar, :integer
    add_column :users, :aux, :integer
    #variables de cantidad de solicitudes

    add_column :users, :tope, :integer
    add_column :users, :cantidad, :integer

  end
end
