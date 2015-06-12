class List < ActiveRecord::Base
	belongs_to :ventum
	before_create :add_costo 
	after_create :modificar 
	validate :cantidad?, :cant?
	
	before_destroy :retornar

	def cant?
		if self.cantidad == 0 or self.cantidad > 20
			errors.add(:cantidad, " debe ser entre 1-20 artigulos")
		end
	end

	def add_costo
		a=Almacen.where(nom:self.producto).take.costo
		self.costo =a*self.cantidad
	end

	def modificar
		a=Almacen.where(nom:self.producto).take
		a.cantidad=a.cantidad-self.cantidad
		a.save
	end

	def retornar
		a=Almacen.where(nom:self.producto).take
		a.cantidad=a.cantidad+self.cantidad
		a.save
	end

	def cantidad?
		unless self.cantidad <= Almacen.where(nom:self.producto).take.cantidad
			errors.add(:cantidad, "rebasa en el stock")
		end
	end

end
