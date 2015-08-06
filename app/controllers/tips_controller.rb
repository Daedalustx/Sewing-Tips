class TipsController < ApplicationController
  before_action :set_tip, only: [:show, :edit, :update, :destroy]

  # GET /tips
  # GET /tips.json
  def index
    @tips = Tip.all
  end

  # GET /tips/1
  # GET /tips/1.json
  def show
  end

  # GET /tips/new
  def new
    @tip = Tip.new
  end

  # GET /tips/1/edit
  def edit
  end

  # POST /tips
  # POST /tips.json
  def create
    @tip = Tip.new(tip_params)

    #respond_to do |format|
      if @tip.save
      #  format.html { redirect_to @tip, notice: 'Tip was successfully created.' }
      #  format.json { render :show, status: :created, location: @tip }
      	redirect_to @tip, notice: 'Tip was successfully created.'
      else
       # format.html { render :new }
       # format.json { render json: @tip.errors, status: :unprocessable_entity }
       	render :new
    #  end
    end
  end

  # PATCH/PUT /tips/1
  # PATCH/PUT /tips/1.json
  def update
    #respond_to do |format|
      if @tip.update(tip_params)
      	redirect_to @tip, notice: 'Tip was successfully updated.'
       # format.html { redirect_to @tip, notice: 'Tip was successfully updated.' }
       # format.json { render :show, status: :ok, location: @tip }
      else
      	render :edit
       # format.html { render :edit }
    	# format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    #end
  end

  # DELETE /tips/1
  # DELETE /tips/1.json
  def destroy
    @tip.destroy
    redirect_to tips_url, notice: 'Tip was successfully destroyed.'
   # respond_to do |format|
   #   format.html { redirect_to tips_url, notice: 'Tip was successfully destroyed.' }
    #  format.json { head :no_content }
   # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip
      @tip = Tip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tip_params
      params.require(:tip).permit(:title, :headline, :image)
    end
end
