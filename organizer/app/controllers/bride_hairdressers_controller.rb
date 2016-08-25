class BrideHairdressersController < ApplicationController
  before_action :set_bride_hairdresser, only: [:show, :edit, :update, :destroy]
  layout "static"
  # GET /bride_hairdressers
  # GET /bride_hairdressers.json
  def index
    @bride_hairdressers = BrideHairdresser.all
  end

  # GET /bride_hairdressers/1
  # GET /bride_hairdressers/1.json
  def show
  end

  # GET /bride_hairdressers/new
  def new
    @bride_hairdresser = BrideHairdresser.new
  end

  # GET /bride_hairdressers/1/edit
  def edit
  end

  # POST /bride_hairdressers
  # POST /bride_hairdressers.json
  def create
    @bride_hairdresser = BrideHairdresser.new(bride_hairdresser_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @bride_hairdresser.save
        format.html { redirect_to @bride_hairdresser, notice: 'Dane fryzjera zostały dodane.' }
        format.json { render :show, status: :created, location: @bride_hairdresser }
      else
        format.html { render :new }
        format.json { render json: @bride_hairdresser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bride_hairdressers/1
  # PATCH/PUT /bride_hairdressers/1.json
  def update
    respond_to do |format|
      if @bride_hairdresser.update(bride_hairdresser_params)
        format.html { redirect_to @bride_hairdresser, notice: 'Dane fryzjera zostały edytowane.' }
        format.json { render :show, status: :ok, location: @bride_hairdresser }
      else
        format.html { render :edit }
        format.json { render json: @bride_hairdresser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bride_hairdressers/1
  # DELETE /bride_hairdressers/1.json
  def destroy
    @bride_hairdresser.destroy
    respond_to do |format|
      format.html { redirect_to bride_hairdressers_url, notice: 'Dane fryzjera zostały usunięte.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bride_hairdresser
      @bride_hairdresser = BrideHairdresser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bride_hairdresser_params
      params.require(:bride_hairdresser).permit(:name, :fitting, :meeting)
    end
end
