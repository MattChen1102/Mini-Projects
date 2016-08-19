class GunsController < ApplicationController
	def index
		@guns = Gun.all
	end

end
