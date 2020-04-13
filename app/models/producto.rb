class Producto < ApplicationRecord
  belongs_to :user

  validates :titulo, presence: {:message => "LLenado Obligatorio"}
  validates :descripcion, presence: {:message => "LLenado Obligatorio"}
  validates :categoria, presence: {:message => "LLenado Obligatorio"}

  has_attached_file :imagen, styles: { small: "100x100", med: "100x100", large: "100x100" },:default_url => '/images/:attachment/missing_:sinfoto.jpg'
  validates_attachment :imagen, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]}
end
