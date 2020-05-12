class UserController < ApplicationController
	before_action :authenticate_user, only: [:show]

	def show
		@user = User.find(params[:id])
	end


	private

  def authenticate_user
  	if current_user != User.find(params[:id])
  		flash[:danger] = "You must be connected on this account to show him !"
  		redirect_to new_user_session_path
  	end
  end
end
