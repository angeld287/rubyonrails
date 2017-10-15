class CreatePropiedades < ActiveRecord::Migration[5.1]
  def change
    create_table :propiedades do |t|
      t.text :descripcion
      t.string :direccion
      t.string :ciudad
      t.string :provincia
      t.string :pais
      t.integer :valoracion
      t.string :dimensiones

      t.timestamps
    end
  end
end
