class BrideAccessoriesController < ApplicationController
  before_action :set_bride_accessory, only: [:show, :edit, :update, :destroy]
  layout "static"
  # GET /bride_accessories
  # GET /bride_accessories.json
  def index
    @bride_accessories = BrideAccessory.all
  end

  # GET /bride_accessories/1
  # GET /bride_accessories/1.json
  def show
  end

  # GET /bride_accessories/new
  def new
    @bride_accessory = BrideAccessory.new
  end

  # GET /bride_accessories/1/edit
  def edit
  end

  # POST /bride_accessories
  # POST /bride_accessories.json
  def create
    @bride_accessory = BrideAccessory.new(bride_accessory_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @bride_accessory.save
        format.html { redirect_to @bride_accessory, notice: 'Bride accessory was successfully created.' }
        format.json { render :show, status: :created, location: @bride_accessory }
      else
        format.html { render :new }
        format.json { render json: @bride_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bride_accessories/1
  # PATCH/PUT /bride_accessories/1.json
  def update
    respond_to do |format|
      if @bride_accessory.update(bride_accessory_params)
        format.html { redirect_to @bride_accessory, notice: 'Bride accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @bride_accessory }
      else
        format.html { render :edit }
        format.json { render json: @bride_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bride_accessories/1
  # DELETE /bride_accessories/1.json
  def destroy
    @bride_accessory.destroy
    respond_to do |format|
      format.html { redirect_to bride_accessories_url, notice: 'Bride accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bride_accessory
      @bride_accessory = BrideAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bride_accessory_params
      params.require(:bride_accessory).permit(:name, :color, :size)
    end
end
