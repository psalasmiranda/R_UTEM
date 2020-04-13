class Evaluacionaviso < ApplicationRecord
  validates :i, presence: {:message => "LLenado Obligatorio"}
  validates :j, presence: {:message => "LLenado Obligatorio"}
  validates :k, presence: {:message => "LLenado Obligatorio"}
end
