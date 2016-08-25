class BrideBeauticansController < ApplicationController
  before_action :set_bride_beautican, only: [:show, :edit, :update, :destroy]

  # GET /bride_beauticans
  # GET /bride_beauticans.json
  def index
    @bride_beauticans = BrideBeautican.all
  end

  # GET /bride_beauticans/1
  # GET /bride_beauticans/1.json
  def show
  end

  # GET /bride_beauticans/new
  def new
    @bride_beautican = BrideBeautican.new
  end

  # GET /bride_beauticans/1/edit
  def edit
  end

  # POST /bride_beauticans
  # POST /bride_beauticans.json
  def create
    @bride_beautican = BrideBeautican.new(bride_beautican_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @bride_beautican.save
        format.html { redirect_to @bride_beautican, notice: 'Bride beautican was successfully created.' }
        format.json { render :show, status: :created, location: @bride_beautican }
      else
        format.html { render :new }
        format.json { render json: @bride_beautican.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bride_beauticans/1
  # PATCH/PUT /bride_beauticans/1.json
  def update
    respond_to do |format|
      if @bride_beautican.update(bride_beautican_params)
        format.html { redirect_to @bride_beautican, notice: 'Bride beautican was successfully updated.' }
        format.json { render :show, status: :ok, location: @bride_beautican }
      else
        format.html { render :edit }
        format.json { render json: @bride_beautican.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bride_beauticans/1
  # DELETE /bride_beauticans/1.json
  def destroy
    @bride_beautican.destroy
    respond_to do |format|
      format.html { redirect_to bride_beauticans_url, notice: 'Bride beautican was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bride_beautican
      @bride_beautican = BrideBeautican.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bride_beautican_params
      params.require(:bride_beautican).permit(:name, :fitting, :meeting)
    end
end
