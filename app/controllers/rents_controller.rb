class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authorization, only: [:edit, :update, :destroy]
  respond_to :html

  def index
    @rents = Rent.all
    respond_with(@rents)
  end

  def show
    respond_with(@rent)
  end

  def new
    @rent = Rent.new
    respond_with(@rent)
  end

  def edit
  end

  def create
    @rent = current_user.build_rent(rent_params)
    @rent.save
    respond_with(@rent)
  end

  def update
    @rent.update(rent_params)
    respond_with(@rent)
  end

  def destroy
    @rent.destroy
    respond_with(@rent)
  end

  private
    def set_rent
      @rent = Rent.find(params[:id])
    end

    def rent_params
      params.require(:rent).permit(:title, :date_from, :date_to, :description, :telephone,
                                  :wechat, :district)
    end

    def authorization
      unless rent_authorized?(current_user, @rent)
        redirect_to :back, notice: "你没有权限"
      end
    end

end
