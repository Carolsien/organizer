class BrideDressesController < ApplicationController
  before_action :set_bride_dress, only: [:show, :edit, :update, :destroy]
  layout "static"
  # GET /bride_dresses
  # GET /bride_dresses.json
  def index
    @bride_dresses = BrideDress.all
  end

  # GET /bride_dresses/1
  # GET /bride_dresses/1.json
  def show
  end

  # GET /bride_dresses/new
  def new
    @bride_dress = BrideDress.new
  end

  # GET /bride_dresses/1/edit
  def edit
  end

  # POST /bride_dresses
  # POST /bride_dresses.json
  def create
    @bride_dress = BrideDress.new(bride_dress_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @bride_dress.save
        format.html { redirect_to @bride_dress, notice: 'Bride dress was successfully created.' }
        format.json { render :show, status: :created, location: @bride_dress }
      else
        format.html { render :new }
        format.json { render json: @bride_dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bride_dresses/1
  # PATCH/PUT /bride_dresses/1.json
  def update
    respond_to do |format|
      if @bride_dress.update(bride_dress_params)
        format.html { redirect_to @bride_dress, notice: 'Bride dress was successfully updated.' }
        format.json { render :show, status: :ok, location: @bride_dress }
      else
        format.html { render :edit }
        format.json { render json: @bride_dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bride_dresses/1
  # DELETE /bride_dresses/1.json
  def destroy
    @bride_dress.destroy
    respond_to do |format|
      format.html { redirect_to bride_dresses_url, notice: 'Bride dress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bride_dress
      @bride_dress = BrideDress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bride_dress_params
      params.require(:bride_dress).permit(:model, :size, :fitting)
    end
end
