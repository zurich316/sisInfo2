class Almacen < ActiveRecord::Base

	def self.aumentar(monto)
		self.cantidad=self.cantidad+monto
	end

end
