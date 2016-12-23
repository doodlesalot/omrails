class WantsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_want, only: [:edit, :update, :destroy]

  # GET /wants
  def index
    @wants = Want.all
  end

  # GET /wants/1
  def show
    @want = Want.find(params[:id])
  end

  # GET /wants/new
  def new
    @want = current_user.wants.new
  end

  # GET /wants/1/edit
  def edit
    @tweet = current_user.wants.find(params[:id])
  end

  # POST /wants
  def create
    @want = current_user.wants.new(want_params)

      if @want.save
        redirect_to @want, notice: 'Want was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /wants/1
  def update
      if @want.update(want_params)
        redirect_to @want, notice: 'Want was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /wants/1
  def destroy
    @want.destroy
      redirect_to wants_url, notice: 'Want was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_want
      @want = current_user.wants.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def want_params
      params.require(:want).permit(:user_id, :title, :summary, :fulldeets)
    end
end
