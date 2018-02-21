class Dojo < ActiveRecord::Base
	def create
		validates :branch, :street, :city, :state, presence: true
	end
end
