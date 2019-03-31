class GazooysController < ApplicationController
  before_action :set_gazooy, only: [:show, :edit, :update, :destroy]

  # GET /gazooys
  # GET /gazooys.json
  def index
   @gazooys = Gazooy.all
   @users = User.all
   @profiles = Profile.all
   @pages = Page.all
   #@gazooys = current_user.gazooys
  end

  # GET /gazooys/1
  # GET /gazooys/1.json
  def show
    
  end

  # GET /gazooys/new
  def new
    @gazooy = Gazooy.new
    # def new
    #   respond_to do |format|
    #   format.html
    #   format.js
    #   end
      # end
  end

  # GET /gazooys/1/edit
  def edit
  end

  # POST /gazooys
  # POST /gazooys.json
  def create
    @gazooy = Gazooy.new(gazooy_params)
    @gazooy.user = current_user
    respond_to do |format|
      if @gazooy.save
        format.html { redirect_to @gazooy, notice: 'Gazooy a bien été créé.' }
        format.json { render :show, status: :created, location: @gazooy }
      else
        format.html { render :new }
        format.json { render json: @gazooy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gazooys/1
  # PATCH/PUT /gazooys/1.json
  def update
    respond_to do |format|
      if @gazooy.update(gazooy_params)
        format.html { redirect_to @gazooy, notice: 'Gazooy a bien été mis à jour.' }
        format.json { render :show, status: :ok, location: @gazooy }
      else
        format.html { render :edit }
        format.json { render json: @gazooy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gazooys/1
  # DELETE /gazooys/1.json
  def destroy
    @gazooy.destroy
    respond_to do |format|
      format.html { redirect_to gazooys_url, notice: 'Gazooy a bien été supprimé.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gazooy
      @gazooy = Gazooy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gazooy_params
      params.require(:gazooy).permit(:text,:user_id , :creation_date, :update_time)
    end
end
