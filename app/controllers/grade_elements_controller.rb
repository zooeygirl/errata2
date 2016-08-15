class GradeElementsController < ApplicationController

	before_action :set_grade_element, only: [:edit, :show, :destroy, :update]
	before_action :set_grade
  before_action :set_essay



def new
	@grade_element = @grade.grade_elements.new(grade_element_params)
end

def create
	@grade_element = @grade.grade_element.create(grade_params)
	@grade_element.grade_id = @grade.id
  @grade_element.essay_id = @grade.essay_id
end

def index
end

def edit
end

def destroy
  @grade_element.destroy
end

def show
end

def update
  @grade_element.update(grade_element_params)
end 


private

def set_grade
      @grade_element = GradeElement.find(params[:id])
end

 def set_essay
    @essay = Essay.find(params[:essay_id])
  end

  def set_grade
  	@grade = Grade.find(params[:grade_id])
  end









 

 def grade_element_params
      params.require(:grade_element).permit(:grade_id, :essay_id, :paragraph_id, :percentage, :outof, :teachereval, :level, :name)
  end


end
