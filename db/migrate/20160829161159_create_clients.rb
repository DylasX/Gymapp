class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nombre
      t.string :apellido
      t.string :genero
      t.integer :edad
      t.string :correo
      t.string :cel
      t.string :direccion
      t.string :barrio
      t.string :ciudad
      t.date :fecha_fin
      t.boolean :activo
      t.date :fecha_ultpago
      t.date :fecha_finpago
      t.boolean :contrato
      t.references :subscription, index: true, foreign_key: true
      t.references :payment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
