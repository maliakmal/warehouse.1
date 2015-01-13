class ReorderRulesController < ApplicationController
  before_action :set_reorder_rule, only: [:show, :edit, :update, :destroy]

  # GET /reorder_rules
  # GET /reorder_rules.json
  def index
    @reorder_rules = ReorderRule.all
  end

  # GET /reorder_rules/1
  # GET /reorder_rules/1.json
  def show
  end

  # GET /reorder_rules/new
  def new
    @reorder_rule = ReorderRule.new
  end

  # GET /reorder_rules/1/edit
  def edit
  end

  # POST /reorder_rules
  # POST /reorder_rules.json
  def create
    @reorder_rule = ReorderRule.new(reorder_rule_params)

    respond_to do |format|
      if @reorder_rule.save
        format.html { redirect_to @reorder_rule, notice: 'Reorder rule was successfully created.' }
        format.json { render :show, status: :created, location: @reorder_rule }
      else
        format.html { render :new }
        format.json { render json: @reorder_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reorder_rules/1
  # PATCH/PUT /reorder_rules/1.json
  def update
    respond_to do |format|
      if @reorder_rule.update(reorder_rule_params)
        format.html { redirect_to @reorder_rule, notice: 'Reorder rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @reorder_rule }
      else
        format.html { render :edit }
        format.json { render json: @reorder_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reorder_rules/1
  # DELETE /reorder_rules/1.json
  def destroy
    @reorder_rule.destroy
    respond_to do |format|
      format.html { redirect_to reorder_rules_url, notice: 'Reorder rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reorder_rule
      @reorder_rule = ReorderRule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reorder_rule_params
      params.require(:reorder_rule).permit(:product_id, :minimum_stock, :maximum_stock, :company_id)
    end
end
