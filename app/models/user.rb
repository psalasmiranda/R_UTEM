class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :productos
  has_many :avisos

  validates :nombre, presence: {:message => "LLenado Obligatorio"}
  validates :paterno, presence: {:message => "LLenado Obligatorio"}
  validates :materno, presence: {:message => "LLenado Obligatorio"}
  validates :carrera, presence: {:message => "LLenado Obligatorio"}
  validates :sede, presence: {:message => "LLenado Obligatorio"}
  validates :sexo, presence: {:message => "LLenado Obligatorio"}
  validates :red_movil, presence: {:message => "LLenado Obligatorio"}

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[utem]+\.)+[cl]{2,})\z/i , presence: {:message => "solo correo UTEM"}
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :imagen, styles: { small: "100x100", med: "100x100", large: "100x100" }
  validates_attachment :imagen, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]}

end
