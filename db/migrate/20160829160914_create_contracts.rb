class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :name
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
