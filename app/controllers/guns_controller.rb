class GunsController < ApplicationController
	def index
		@gun = Guns.all
	end
end
