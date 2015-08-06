class StepsController < ApplicationController
	before_action :set_step, only: [:edit, :show, :update, :destroy]
	 
	def index
		@steps = Step.all
		respond_to :html
	end
	
	def show
		respond_to :html
	end
	
	def new
		@step = Step.new
	end
	
	def edit
	end
	
	def create
    	@step = Step.new(step_params)

		if @step.save
			redirect_to @step, notice: "Step # #{@step.displayIndex} for tip # #{@step.tip_id} was successfully created."
		else
			render :new
		end
	end
	
	def update
		if @step.update(step_params)
			redirect_to @step, notice: "Step # #{@step.displayIndex} for tip # #{@step.tip_id} was successfully updated."
		else
			render :edit
		end
	end
	
	def destroy
		@step.destroy
		redirect_to steps_url, notice: "Step # #{@step.displayIndex} for tip # #{@step.tip_id} was successfully destroyed."
	end
	
	private
		def set_step
			@step = Step.find(params[:id])
		end
		
		def step_params
			params.require(:step).permit(:tip_id, :heading, :image, :content, :displayIndex)
		end
		
end
