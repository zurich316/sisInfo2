class Ventum < ActiveRecord::Base
	belongs_to :client
	has_many :lists
end
