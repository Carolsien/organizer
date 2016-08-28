class ChurchBestsController < ApplicationController
  layout "static"
  before_action :set_church_best, only: [:show, :edit, :update, :destroy]

  # GET /church_bests
  # GET /church_bests.json
  def index
    @church_bests = ChurchBest.all
  end

  # GET /church_bests/1
  # GET /church_bests/1.json
  def show
  end

  # GET /church_bests/new
  def new
    @church_best = ChurchBest.new
  end

  # GET /church_bests/1/edit
  def edit
  end

  # POST /church_bests
  # POST /church_bests.json
  def create
    @church_best = ChurchBest.new(church_best_params)

    respond_to do |format|
      if @church_best.save
        format.html { redirect_to @church_best, notice: 'Church best was successfully created.' }
        format.json { render :show, status: :created, location: @church_best }
      else
        format.html { render :new }
        format.json { render json: @church_best.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /church_bests/1
  # PATCH/PUT /church_bests/1.json
  def update
    respond_to do |format|
      if @church_best.update(church_best_params)
        format.html { redirect_to @church_best, notice: 'Church best was successfully updated.' }
        format.json { render :show, status: :ok, location: @church_best }
      else
        format.html { render :edit }
        format.json { render json: @church_best.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /church_bests/1
  # DELETE /church_bests/1.json
  def destroy
    @church_best.destroy
    respond_to do |format|
      format.html { redirect_to church_bests_url, notice: 'Church best was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_church_best
      @church_best = ChurchBest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def church_best_params
      params.require(:church_best).permit(:name, :surname)
    end
end
