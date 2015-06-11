class CreateAlmacens < ActiveRecord::Migration
  def change
    create_table :almacens do |t|
      t.string :cod
      t.string :nom
      t.integer :costo
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end
