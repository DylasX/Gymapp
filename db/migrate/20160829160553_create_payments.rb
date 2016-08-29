class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :nombre
      t.decimal :precio, precision: 10, scale: 2
      t.string :descripcion
      t.decimal :descuento, precision: 10, scale: 2
      t.decimal :impuesto, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
