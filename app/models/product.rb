class Product < ActiveRecord::Base
  belongs_to :category
  validates :nombre, :presence => {:message => "no puede estar en blanco"}, length: {in:3..40, too_short: "demasiado corto", too_long: "demasiado largo"}, uniqueness: {case_sensitive: false, message: "ya está registrado"}
  validates :descripcion, length: {maximum: 80, too_long: "demasiado larga"}
  validates :stock, :numericality => {:message => "debe ser un valor numérico"}
  validates_numericality_of :stock, :greater_than => 0, :message => "no puede ser negativo o cero"
  validates :precio_compra, :numericality => {:message => "debe ser un valor numérico"}
end
