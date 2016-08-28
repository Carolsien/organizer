class WeddingRoomsController < ApplicationController
  layout "static"
  before_action :set_wedding_room, only: [:show, :edit, :update, :destroy]

  # GET /wedding_rooms
  # GET /wedding_rooms.json
  def index
    @wedding_rooms = WeddingRoom.all
  end

  # GET /wedding_rooms/1
  # GET /wedding_rooms/1.json
  def show
  end

  # GET /wedding_rooms/new
  def new
    @wedding_room = WeddingRoom.new
  end

  # GET /wedding_rooms/1/edit
  def edit
  end

  # POST /wedding_rooms
  # POST /wedding_rooms.json
  def create
    @wedding_room = WeddingRoom.new(wedding_room_params)

    respond_to do |format|
      if @wedding_room.save
        format.html { redirect_to @wedding_room, notice: 'Wedding room was successfully created.' }
        format.json { render :show, status: :created, location: @wedding_room }
      else
        format.html { render :new }
        format.json { render json: @wedding_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wedding_rooms/1
  # PATCH/PUT /wedding_rooms/1.json
  def update
    respond_to do |format|
      if @wedding_room.update(wedding_room_params)
        format.html { redirect_to @wedding_room, notice: 'Wedding room was successfully updated.' }
        format.json { render :show, status: :ok, location: @wedding_room }
      else
        format.html { render :edit }
        format.json { render json: @wedding_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wedding_rooms/1
  # DELETE /wedding_rooms/1.json
  def destroy
    @wedding_room.destroy
    respond_to do |format|
      format.html { redirect_to wedding_rooms_url, notice: 'Wedding room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wedding_room
      @wedding_room = WeddingRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wedding_room_params
      params.require(:wedding_room).permit(:name, :adress)
    end
end
