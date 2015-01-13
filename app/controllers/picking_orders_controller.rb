class PickingOrdersController < ApplicationController
  before_action :set_picking_order, only: [:show, :edit, :update, :destroy]

  # GET /picking_orders
  # GET /picking_orders.json
  def index
    @picking_orders = PickingOrder.all
  end

  # GET /picking_orders/1
  # GET /picking_orders/1.json
  def show
  end

  # GET /picking_orders/new
  def new
    @picking_order = PickingOrder.new
  end

  # GET /picking_orders/1/edit
  def edit
  end

  # POST /picking_orders
  # POST /picking_orders.json
  def create
    @picking_order = PickingOrder.new(picking_order_params)

    respond_to do |format|
      if @picking_order.save
        format.html { redirect_to @picking_order, notice: 'Picking order was successfully created.' }
        format.json { render :show, status: :created, location: @picking_order }
      else
        format.html { render :new }
        format.json { render json: @picking_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picking_orders/1
  # PATCH/PUT /picking_orders/1.json
  def update
    respond_to do |format|
      if @picking_order.update(picking_order_params)
        format.html { redirect_to @picking_order, notice: 'Picking order was successfully updated.' }
        format.json { render :show, status: :ok, location: @picking_order }
      else
        format.html { render :edit }
        format.json { render json: @picking_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picking_orders/1
  # DELETE /picking_orders/1.json
  def destroy
    @picking_order.destroy
    respond_to do |format|
      format.html { redirect_to picking_orders_url, notice: 'Picking order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picking_order
      @picking_order = PickingOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picking_order_params
      params.require(:picking_order).permit(:status, :order_id, :user_id)
    end
end
