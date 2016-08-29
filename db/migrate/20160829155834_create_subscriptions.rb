class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :tiempo_suscripcion
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
