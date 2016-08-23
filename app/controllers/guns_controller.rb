class GunsController < ApplicationController
	before_action :set_gun, :only => [ :show, :update, :destroy, :edit]

  def index
		  @guns = Gun.page(params[:page]).per(10)

      if params[:id]
         @gun = Gun.find(params[:id])
      else
         @gun = Gun.new
      end

	end

	# def new
	# 	  @gun = Gun.new
	# end	

	def create
	   	 @gun= Gun.new(gun_params)
	 	if @gun.save
       flash[:notice]="新增成功！"
       redirect_to gun_path(@gun) 
    else
       render :action => :new
    end 
  end

  def edit
    @guns = Gun.page(params[:page]).per(10)

    render :index
  end	

  def show
      @page_title = @gun.name
  end

  def update
    	# if
      #    @gun.update(gun_params)
      #    flash[:notice]="更新成功！"
      #    redirect_to gun_path(@gun)
      # # else
      #  	 render :action => :edit  
      #end
    @guns = Gun.page(params[:page]).per(10)

       if  @gun.update(gun_params)
           flash[:notice]="更新成功！"
           redirect_to gun_path(@gun)
        else
           render :action => :index  
        end
        
  end
  
  def destroy

    @gun.destroy
        flash[:alert] = "刪除成功！"     
      	redirect_to guns_path(:page=>params[:page])
  end


private

  def gun_params
    params.require(:gun).permit(:name, :description, :capacity , :date , :datetime)
  end   

  def set_gun
    @gun = Gun.find(params[:id])
  end
end
