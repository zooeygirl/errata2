class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:edit, :show, :destroy, :update]
  before_action :authenticate_user!



def new
  @classroom = current_user.classrooms.build
end

def create
  @classroom = current_user.classrooms.build(classroom_params)
  @classroom.user_id = current_user.id
    if @classroom.save
    redirect_to :action => :index
  else
    @title = "Sign up"
    render 'new'
  end

end

def show
class_list
end


def index
  set_teacher
  @classrooms = Classroom.where(user_id: current_user.teacher).all
end



   def destroy
    if @classroom.destroy
      flash[:success] = "Correction item was deleted"
    else
      flash[:error] = "Essay correction could not be deleted"
    end
      redirect_to classrooms_path
  end 

    def update
    respond_to do |format|
      if @classroom.update(classroom_params)
        format.html { redirect_to @classroom, notice: 'Classroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @classroom }
        
      else
        format.html { render :edit }
        format.json { render json: @essay.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_student_to_classroom
      @classroom = Classroom.find(params[:classroom_id])
      current_user.update_attribute(:classroom, @classroom.id)    
    redirect_to classrooms_path, notice: "You have been added to the class"
  end

  def class_list
    @class_list = User.where(classroom: @classroom.id)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

  def set_teacher
    if current_user.role == 'Teacher'
      current_user.teacher = current_user.id
    end
  end

  def set_user
    @user = User.find(params[:user_id])
  end


    # Never trust parameters from the scary internet, only allow the white list through.
    def classroom_params
      params.require(:classroom).permit(:user_id, :teacher, :school, :day, :start_time, :student_list, practice_exercise_ids:[])
    end
end