class ChurchCeremoniesController < ApplicationController
  layout "static"
  before_action :set_church_ceremony, only: [:show, :edit, :update, :destroy]

  # GET /church_ceremonies
  # GET /church_ceremonies.json
  def index
    @church_ceremonies = ChurchCeremony.all
  end

  # GET /church_ceremonies/1
  # GET /church_ceremonies/1.json
  def show
  end

  # GET /church_ceremonies/new
  def new
    @church_ceremony = ChurchCeremony.new
  end

  # GET /church_ceremonies/1/edit
  def edit
  end

  # POST /church_ceremonies
  # POST /church_ceremonies.json
  def create
    @church_ceremony = ChurchCeremony.new(church_ceremony_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @church_ceremony.save
        format.html { redirect_to @church_ceremony, notice: 'Church ceremony was successfully created.' }
        format.json { render :show, status: :created, location: @church_ceremony }
      else
        format.html { render :new }
        format.json { render json: @church_ceremony.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /church_ceremonies/1
  # PATCH/PUT /church_ceremonies/1.json
  def update
    respond_to do |format|
      if @church_ceremony.update(church_ceremony_params)
        format.html { redirect_to @church_ceremony, notice: 'Church ceremony was successfully updated.' }
        format.json { render :show, status: :ok, location: @church_ceremony }
      else
        format.html { render :edit }
        format.json { render json: @church_ceremony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /church_ceremonies/1
  # DELETE /church_ceremonies/1.json
  def destroy
    @church_ceremony.destroy
    respond_to do |format|
      format.html { redirect_to church_ceremonies_url, notice: 'Church ceremony was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_church_ceremony
      @church_ceremony = ChurchCeremony.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def church_ceremony_params
      params.require(:church_ceremony).permit(:name, :adress, :date)
    end
end
