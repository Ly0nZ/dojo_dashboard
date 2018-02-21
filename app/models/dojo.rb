class Dojo < ActiveRecord::Base
	has_many :students
	def create
		validates :branch, :street, :city, :state, presence: true, length:{ minimum: 2}
	end
end
