class ChurchDecorationsController < ApplicationController
  layout "static"
  before_action :set_church_decoration, only: [:show, :edit, :update, :destroy]

  # GET /church_decorations
  # GET /church_decorations.json
  def index
    @church_decorations = ChurchDecoration.all
  end

  # GET /church_decorations/1
  # GET /church_decorations/1.json
  def show
  end

  # GET /church_decorations/new
  def new
    @church_decoration = ChurchDecoration.new
  end

  # GET /church_decorations/1/edit
  def edit
  end

  # POST /church_decorations
  # POST /church_decorations.json
  def create
    @church_decoration = ChurchDecoration.new(church_decoration_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @church_decoration.save
        format.html { redirect_to @church_decoration, notice: 'Church decoration was successfully created.' }
        format.json { render :show, status: :created, location: @church_decoration }
      else
        format.html { render :new }
        format.json { render json: @church_decoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /church_decorations/1
  # PATCH/PUT /church_decorations/1.json
  def update
    respond_to do |format|
      if @church_decoration.update(church_decoration_params)
        format.html { redirect_to @church_decoration, notice: 'Church decoration was successfully updated.' }
        format.json { render :show, status: :ok, location: @church_decoration }
      else
        format.html { render :edit }
        format.json { render json: @church_decoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /church_decorations/1
  # DELETE /church_decorations/1.json
  def destroy
    @church_decoration.destroy
    respond_to do |format|
      format.html { redirect_to church_decorations_url, notice: 'Church decoration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_church_decoration
      @church_decoration = ChurchDecoration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def church_decoration_params
      params.require(:church_decoration).permit(:name, :colour, :amount)
    end
end
