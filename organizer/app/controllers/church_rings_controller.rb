class ChurchRingsController < ApplicationController
  layout "static"
  before_action :set_church_ring, only: [:show, :edit, :update, :destroy]

  # GET /church_rings
  # GET /church_rings.json
  def index
    @church_rings = ChurchRing.all
  end

  # GET /church_rings/1
  # GET /church_rings/1.json
  def show
  end

  # GET /church_rings/new
  def new
    @church_ring = ChurchRing.new
  end

  # GET /church_rings/1/edit
  def edit
  end

  # POST /church_rings
  # POST /church_rings.json
  def create
    @church_ring = ChurchRing.new(church_ring_params)

    respond_to do |format|
      if @church_ring.save
        format.html { redirect_to @church_ring, notice: 'Church ring was successfully created.' }
        format.json { render :show, status: :created, location: @church_ring }
      else
        format.html { render :new }
        format.json { render json: @church_ring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /church_rings/1
  # PATCH/PUT /church_rings/1.json
  def update
    respond_to do |format|
      if @church_ring.update(church_ring_params)
        format.html { redirect_to @church_ring, notice: 'Church ring was successfully updated.' }
        format.json { render :show, status: :ok, location: @church_ring }
      else
        format.html { render :edit }
        format.json { render json: @church_ring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /church_rings/1
  # DELETE /church_rings/1.json
  def destroy
    @church_ring.destroy
    respond_to do |format|
      format.html { redirect_to church_rings_url, notice: 'Church ring was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_church_ring
      @church_ring = ChurchRing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def church_ring_params
      params.require(:church_ring).permit(:name, :size)
    end
end
