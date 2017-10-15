class Propiedade < ApplicationRecord
	validates :descripcion, presence: true,
                    length: { minimum: 5 }
end
