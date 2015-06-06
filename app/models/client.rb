class Client < ActiveRecord::Base
	has_many :vetums
	validates :ci, uniqueness: true
	validates :ci, :name, :last,:telf, presence: true
end
