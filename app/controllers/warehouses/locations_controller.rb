class Warehouses::LocationsController < ApplicationController
  before_action :set_location, only: %i[edit update destroy ]
  before_action :set_warehouse, only: %i[new edit update destroy index show]


  # GET /locations or /locations.json
  def index
    # @warehouse = Warehouse.where(warehouse_id: params[:warehouse_id])
    @locations = Location.where(warehouse_id: params[:warehouse_id])
  end

  # GET /locations/1 or /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    # @location = Location.create(
    #   location_params.merge(warehouse_id: @warehouse.id)
    # )
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations or /locations.json
  def create
    @location = Location.new(location_params)
    @warehouse = Warehouse.find(params[:warehouse_id])

    @location.warehouse_id = @warehouse.id
    respond_to do |format|
      if @location.save
        format.html { redirect_to warehouse_locations_url(@warehouse), notice: "Warehouse was successfully created." }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1 or /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to warehouse_locations_url(@warehouse), notice: "Warehouse was successfully updated." }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1 or /locations/1.json
  def destroy
    @location.destroy

    respond_to do |format|
      format.html { redirect_to warehouse_locations_url(@warehouse), notice: "Inventory item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_location
    @location = Location.find(params[:id])
  end

  def set_warehouse
    @warehouse = Warehouse.find(params[:warehouse_id])
  end

  # Only allow a list of trusted parameters through.
  def location_params
    params.require(:location).permit(:floor, :section, :rack, :number, :availability)
  end
end
