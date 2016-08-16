class AssignmentsController < ApplicationController
	before_action :set_classroom
	before_action :set_assignment, only: [:show, :edit, :update, :destroy]


def new
	@assignment = @classroom.assignments.build
end

def create
	@assignment = @classroom.assignments.create(assignment_params)
  	@assignment.classroom_id = @classroom.id

    redirect_to classroom_path(@classroom)
end

def edit
end

def show
  class_list

end

def index
end

def update
  @assignment.update(assignment_params) 
  redirect_to classroom_assignment_path(@classroom, @assignment)
end

def destroy
  if @assignment.destroy
      flash[:success] = "Assignment was deleted"
  else
      flash[:error] = "Assignment could not be deleted"
  end
  redirect_to classroom_assignments_path
end

  def class_list
    @class_list = User.where(classroom: @classroom.id)
  end



def calculate_class_average_on_assignment
  @assignment = Assignment.find(params[:assignment_id])
  @class_list = User.where(classroom: @classroom.id)
  essays_for_assignment = Essay.where(assignment_id: @assignment.id)
  sum_of_grades = 0
  num_of_students = 0
  if essays_for_assignment.count > 0
      essays_for_assignment.each do |ess|
        if @class_list.include?(User.find(ess.user_id))
          if ess.studentgrade != 0
            sum_of_grades += ess.studentgrade
            num_of_students += 1 
          end
        end
      end
      if num_of_students > 0  && sum_of_grades > 0 
      @assignment.update_attribute(:classroom_average, sum_of_grades/num_of_students)
      end
  end
  redirect_to classroom_assignment_path(@classroom, @assignment)
end




private

 def set_classroom
      @classroom = Classroom.find(params[:classroom_id])
 end

 def set_assignment
      @assignment = Assignment.find(params[:id])
    end

 def assignment_params
      params.require(:assignment).permit(:user_id, :title, :description, :classroom_id, :duedate, :wordcountmin, :wordcountmax, :evaluation, :classroom_average)
  end

end
