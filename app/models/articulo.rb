class Articulo < ApplicationRecord
  belongs_to :autor, optional: true

  validates :titulo, presence: { :message => "no puede estar vacio"}
  validates :conteido, presence: { :message => "no puede estar vacio"},
  length: { minimum: 50, :message => "es demasiado corto, minimo 50 caracteres"}

end
