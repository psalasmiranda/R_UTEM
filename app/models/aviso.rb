class Aviso < ApplicationRecord


  validates :nombre, presence: {:message => "LLenado Obligatorio"}
  validates :descripcion, presence: {:message => "LLenado Obligatorio"}

end
