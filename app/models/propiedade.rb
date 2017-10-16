class Propiedade < ApplicationRecord
	validates :descripcion, presence: true,
                    length: { minimum: 5 }
    validates :valoracion, presence: true, numericality: true
    validates :direccion, presence: true,
                    length: { minimum: 10 }
    validates :dimensiones, presence: true, numericality: true
end
