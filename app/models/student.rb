class Student < ActiveRecord::Base
  belongs_to :dojo
	
	def create
		validates :first_name, :last_name, :email, :dojo, presence: true, length:{ minimum: 2}
	end
end
