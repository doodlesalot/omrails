class TabsController < ApplicationController
  before_action :set_tab, only: [:show, :edit, :update, :destroy]

  # GET /tabs
  def index
    @tabs = Tab.all
  end

  # GET /tabs/1
  def show
  end

  # GET /tabs/new
  def new
    @tab = current_user.tabs.new
  end

  # GET /tabs/1/edit
  def edit
  end

  # POST /tabs
  def create
    @tab = current_user.tabs.new(tab_params)
      if @tab.save
        redirect_to @tab, notice: 'Tab was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /tabs/1
  def update
      if @tab.update(tab_params)
        redirect_to @tab, notice: 'Tab was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /tabs/1
  def destroy
    @tab.destroy
      redirect_to tabs_url, notice: 'Tab was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tab
      @tab = current_user.tabs.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tab_params
      params.require(:tab).permit(:title, :content)
    end
end
