class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.integer :cod
      t.integer :cost

      t.timestamps null: false
    end
  end
end
