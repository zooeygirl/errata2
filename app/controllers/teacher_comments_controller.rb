class TeacherCommentsController < ApplicationController

 
  before_action :set_teacher_comment, only: [:show, :edit, :update, :destroy]


def new
	@teacher_comment = current_user.teacher_comments.new
end

def create
  @teacher_comment = current_user.teacher_comments.create(teacher_comment_params) 
  @teacher_comment.user_id = current_user.id
 
  
   if @teacher_comment.save
<<<<<<< HEAD
        redirect_to classrooms_path
=======
        redirect_to :back
>>>>>>> 5d58e31e9bf573fd135e293a38eea03b30f15d5d
    end


end


def edit
 

end


def show
  
end

def index
  @teacher_comments = TeacherComment.all
end



def update
  @teacher_comment.update(teacher_comment_params)
   if @teacher_comment.update(teacher_comment_params)
       redirect_to classrooms_path
    end
end

 def destroy 
    @teacher_comment.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Mistake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end




private
   

    def set_teacher_comment
      @teacher_comment = TeacherComment.find(params[:id])
    end

   

   def teacher_comment_params
      params.require(:teacher_comment).permit(:user_id, :category, :content)
    end
end
