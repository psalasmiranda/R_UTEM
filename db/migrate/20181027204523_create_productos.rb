class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :titulo
      t.string :descripcion
      t.string :defecto
      t.string :categoria
      t.string :estado
      t.string :email
      t.string :penalizar
      t.datetime :horacreacion
      t.datetime :horaaprobacion
      t.datetime :horasolicitud
      t.string :emailadm
      t.integer :idsolicitante


      t.timestamps
    end
  end
end
