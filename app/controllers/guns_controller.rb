class GunsController < ApplicationController
	def index
		@guns = Gun.all
	end

	def new
		@gun = Gun.new
	end	
end
