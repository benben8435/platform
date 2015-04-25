class WelcomeController < ApplicationController
  def index
  	if current_user != nil
  		redirect_to rents_path
  	end
  end
end
