class AddClientToVenta < ActiveRecord::Migration
  def change
    add_column :venta, :client_id, :integer
    add_index :venta, :client_id
  end
end
