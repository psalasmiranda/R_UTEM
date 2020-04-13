class CreateAvisos < ActiveRecord::Migration[5.1]
  def change
    create_table :avisos do |t|
      t.string :nombre
      t.text :descripcion
      t.datetime :fecha
      t.string :user
      t.string :estado
      t.string :adm
      t.string :fonouser
      t.string :usersede

      t.timestamps
    end
  end
end
