class ProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :authorization, except: :show
  before_action :super_authorization, only: :upgrade
  def index
    @user_list = User.all
  end

  def show
    @this_user = User.find(params[:id])

  end

  def upgrade
    user = User.find(params[:user])

    if params[:upgrade] == 'true'
      user.authority = 1

    else 
      user.authority = 0

    end
    if user.save
      redirect_to action: :index
    end
  end
  
  def update

  end

  def destroy
    user = User.find(params[:id])
    unless current_user.authority > user.authority
      redirect_to action: :index, notice: "你没有权限"
    end
    user.destroy
    redirect_to action: :index
  end
  
  private
    def authorization
      unless current_user.authority > 0
        redirect_to :back, notice: "你没有权限"
      end
    end
    def super_authorization
      unless current_user.authority == 2
        redirect_to :back, notice: "你没有权限"
      end
    end
end
