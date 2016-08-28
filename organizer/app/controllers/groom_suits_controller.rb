class GroomSuitsController < ApplicationController
  layout "static"
  before_action :set_groom_suit, only: [:show, :edit, :update, :destroy]

  # GET /groom_suits
  # GET /groom_suits.json
  def index
    @groom_suits = GroomSuit.all
  end

  # GET /groom_suits/1
  # GET /groom_suits/1.json
  def show
  end

  # GET /groom_suits/new
  def new
    @groom_suit = GroomSuit.new
  end

  # GET /groom_suits/1/edit
  def edit
  end

  # POST /groom_suits
  # POST /groom_suits.json
  def create
    @groom_suit = GroomSuit.new(groom_suit_params)

    respond_to do |format|
      if @groom_suit.save
        format.html { redirect_to @groom_suit, notice: 'Groom suit was successfully created.' }
        format.json { render :show, status: :created, location: @groom_suit }
      else
        format.html { render :new }
        format.json { render json: @groom_suit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groom_suits/1
  # PATCH/PUT /groom_suits/1.json
  def update
    respond_to do |format|
      if @groom_suit.update(groom_suit_params)
        format.html { redirect_to @groom_suit, notice: 'Groom suit was successfully updated.' }
        format.json { render :show, status: :ok, location: @groom_suit }
      else
        format.html { render :edit }
        format.json { render json: @groom_suit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groom_suits/1
  # DELETE /groom_suits/1.json
  def destroy
    @groom_suit.destroy
    respond_to do |format|
      format.html { redirect_to groom_suits_url, notice: 'Groom suit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groom_suit
      @groom_suit = GroomSuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def groom_suit_params
      params.require(:groom_suit).permit(:model, :size, :fitting)
    end
end
