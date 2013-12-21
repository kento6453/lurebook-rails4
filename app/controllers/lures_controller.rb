class LuresController < ApplicationController
  before_action :set_lure, only: [:show, :edit, :update, :destroy]

  # GET /lures
  # GET /lures.json
  def index
    @lures = Lure.all
  end

  # GET /lures/1
  # GET /lures/1.json
  def show
  end

  # GET /lures/new
  def new
    @lure = Lure.new
  end

  # GET /lures/1/edit
  def edit
  end

  # POST /lures
  # POST /lures.json
  def create
    @lure = Lure.new(lure_params)

    respond_to do |format|
      if @lure.save
        format.html { redirect_to @lure, notice: 'Lure was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lure }
      else
        format.html { render action: 'new' }
        format.json { render json: @lure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lures/1
  # PATCH/PUT /lures/1.json
  def update
    respond_to do |format|
      if @lure.update(lure_params)
        format.html { redirect_to @lure, notice: 'Lure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lures/1
  # DELETE /lures/1.json
  def destroy
    @lure.destroy
    respond_to do |format|
      format.html { redirect_to lures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lure
      @lure = Lure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lure_params
      params.require(:lure).permit(:name, :genre, :kind, :maker_id, :price, :weight, :buy_link, :photo)
    end
end
