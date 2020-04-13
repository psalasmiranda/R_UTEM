class AddColumnProductovariablesToProductos < ActiveRecord::Migration[5.1]
  def change
      add_attachment :productos, :imagen
  end
end
