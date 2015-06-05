class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :ci
      t.string :name
      t.string :last
      t.integer :telf

      t.timestamps null: false
    end
  end
end
