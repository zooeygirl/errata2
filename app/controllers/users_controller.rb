class UsersController < ApplicationController

def index
  @users = User.all
end

def show
	set_user
end



 def set_user
      @user = User.find(params[:id])
 end




end