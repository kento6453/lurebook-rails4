class UsersLuresController < ApplicationController
  before_action :set_users_lure, only: [:show, :edit, :update, :destroy]

  # GET /users_lures
  # GET /users_lures.json
  def index
    @users_lures = UsersLure.all
  end

  # GET /users_lures/1
  # GET /users_lures/1.json
  def show
  end

  # GET /users_lures/new
  def new
    @users_lure = UsersLure.new
  end

  # GET /users_lures/1/edit
  def edit
  end

  # POST /users_lures
  # POST /users_lures.json
  def create
    @users_lure = UsersLure.new(users_lure_params)

    respond_to do |format|
      if @users_lure.save
        format.html { redirect_to @users_lure, notice: 'UsersLure was successfully created.' }
        format.json { render action: 'show', status: :created, location: @users_lure }
      else
        format.html { render action: 'new' }
        format.json { render json: @users_lure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_lures/1
  # PATCH/PUT /users_lures/1.json
  def update
    respond_to do |format|
      if @users_lure.update(users_lure_params)
        format.html { redirect_to root_path, notice: 'UsersLure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @users_lure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_lures/1
  # DELETE /users_lures/1.json
  def destroy
    @users_lure.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_lure
      @users_lure = UsersLure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_lure_params
      params.require(:users_lure).permit(:user_id, :lure_id, :method, :comment, :priority, :color, :field, :photo)
    end
end
