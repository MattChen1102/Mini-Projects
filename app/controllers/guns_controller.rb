class GunsController < ApplicationController
	def index
		@guns = Gun.all
	end

	def new
		@gun = Gun.new
	end	

	def create
	   	@gun= Gun.new(params.require(:gun).permit(:name, :description))
    end 	



end
