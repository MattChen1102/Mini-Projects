class Gun < ApplicationRecord
	validates_presence_of :name, :description , :capacity
end
