class WeddingServicesController < ApplicationController
  layout "static"
  before_action :set_wedding_service, only: [:show, :edit, :update, :destroy]

  # GET /wedding_services
  # GET /wedding_services.json
  def index
    @wedding_services = WeddingService.all
  end

  # GET /wedding_services/1
  # GET /wedding_services/1.json
  def show
  end

  # GET /wedding_services/new
  def new
    @wedding_service = WeddingService.new
  end

  # GET /wedding_services/1/edit
  def edit
  end

  # POST /wedding_services
  # POST /wedding_services.json
  def create
    @wedding_service = WeddingService.new(wedding_service_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @wedding_service.save
        format.html { redirect_to @wedding_service, notice: 'Obsługa sali została dodana.' }
        format.json { render :show, status: :created, location: @wedding_service }
      else
        format.html { render :new }
        format.json { render json: @wedding_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wedding_services/1
  # PATCH/PUT /wedding_services/1.json
  def update
    respond_to do |format|
      if @wedding_service.update(wedding_service_params)
        format.html { redirect_to @wedding_service, notice: 'Obsługa sali została edytowana.' }
        format.json { render :show, status: :ok, location: @wedding_service }
      else
        format.html { render :edit }
        format.json { render json: @wedding_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wedding_services/1
  # DELETE /wedding_services/1.json
  def destroy
    @wedding_service.destroy
    respond_to do |format|
      format.html { redirect_to wedding_services_url, notice: 'Obsługa sali została usunięta.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wedding_service
      @wedding_service = WeddingService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wedding_service_params
      params.require(:wedding_service).permit(:who, :name, :contact)
    end
end
