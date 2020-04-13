class CreateEncuestadonados < ActiveRecord::Migration[5.1]
  def change
    create_table :encuestadonados do |t|
      t.string :nombredon
      t.string :nombresol
      t.string :categoria
      t.integer :iddon
      t.string :emaildon
      t.string :sededon
      t.string :carreradon
      t.string :sexo
      t.integer :notasol
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
