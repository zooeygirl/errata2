class UsersController < ApplicationController

def index
  @users = User.all
end

def show
	set_user
	@classroom = Classroom.find(@user.classroom)
end

def miscategories
	@user = User.find(params[:user_id])
	@cat = params[:cat]
end


 def set_user
      @user = User.find(params[:id])
 end




end