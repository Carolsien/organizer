class WeddingDecorationsController < ApplicationController
  layout "static"
  before_action :set_wedding_decoration, only: [:show, :edit, :update, :destroy]

  # GET /wedding_decorations
  # GET /wedding_decorations.json
  def index
    @wedding_decorations = WeddingDecoration.all
  end

  # GET /wedding_decorations/1
  # GET /wedding_decorations/1.json
  def show
  end

  # GET /wedding_decorations/new
  def new
    @wedding_decoration = WeddingDecoration.new
  end

  # GET /wedding_decorations/1/edit
  def edit
  end

  # POST /wedding_decorations
  # POST /wedding_decorations.json
  def create
    @wedding_decoration = WeddingDecoration.new(wedding_decoration_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @wedding_decoration.save
        format.html { redirect_to @wedding_decoration, notice: 'Wedding decoration was successfully created.' }
        format.json { render :show, status: :created, location: @wedding_decoration }
      else
        format.html { render :new }
        format.json { render json: @wedding_decoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wedding_decorations/1
  # PATCH/PUT /wedding_decorations/1.json
  def update
    respond_to do |format|
      if @wedding_decoration.update(wedding_decoration_params)
        format.html { redirect_to @wedding_decoration, notice: 'Wedding decoration was successfully updated.' }
        format.json { render :show, status: :ok, location: @wedding_decoration }
      else
        format.html { render :edit }
        format.json { render json: @wedding_decoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wedding_decorations/1
  # DELETE /wedding_decorations/1.json
  def destroy
    @wedding_decoration.destroy
    respond_to do |format|
      format.html { redirect_to wedding_decorations_url, notice: 'Wedding decoration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wedding_decoration
      @wedding_decoration = WeddingDecoration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wedding_decoration_params
      params.require(:wedding_decoration).permit(:name, :colour, :amount)
    end
end
