class GroomAccessoriesController < ApplicationController
  layout "static"
  before_action :set_groom_accessory, only: [:show, :edit, :update, :destroy]

  # GET /groom_accessories
  # GET /groom_accessories.json
  def index
    @groom_accessories = GroomAccessory.all
  end

  # GET /groom_accessories/1
  # GET /groom_accessories/1.json
  def show
  end

  # GET /groom_accessories/new
  def new
    @groom_accessory = GroomAccessory.new
  end

  # GET /groom_accessories/1/edit
  def edit
  end

  # POST /groom_accessories
  # POST /groom_accessories.json
  def create
    @groom_accessory = GroomAccessory.new(groom_accessory_params)

    respond_to do |format|
      if @groom_accessory.save
        format.html { redirect_to @groom_accessory, notice: 'Groom accessory was successfully created.' }
        format.json { render :show, status: :created, location: @groom_accessory }
      else
        format.html { render :new }
        format.json { render json: @groom_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groom_accessories/1
  # PATCH/PUT /groom_accessories/1.json
  def update
    respond_to do |format|
      if @groom_accessory.update(groom_accessory_params)
        format.html { redirect_to @groom_accessory, notice: 'Groom accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @groom_accessory }
      else
        format.html { render :edit }
        format.json { render json: @groom_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groom_accessories/1
  # DELETE /groom_accessories/1.json
  def destroy
    @groom_accessory.destroy
    respond_to do |format|
      format.html { redirect_to groom_accessories_url, notice: 'Groom accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groom_accessory
      @groom_accessory = GroomAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def groom_accessory_params
      params.require(:groom_accessory).permit(:name, :colour, :amount)
    end
end
