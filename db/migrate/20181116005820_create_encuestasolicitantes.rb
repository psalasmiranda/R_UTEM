class CreateEncuestasolicitantes < ActiveRecord::Migration[5.1]
  def change
    create_table :encuestasolicitantes do |t|
      t.string :nombresol
      t.string :nombredon
      t.string :categoria
      t.integer :idsol
      t.string :emailsol
      t.string :sedesol
      t.string :carrerasol
      t.string :sexo
      t.integer :notadon
      t.string :publicacion
      t.string :nompro
      t.string :res
      t.integer :notapro
      t.string :estadopro
      t.string :real
      t.datetime :horapedido

      t.timestamps
    end
  end
end
