class PeQuestionsController < ApplicationController

  before_action :set_practice_exercise
  before_action :set_pe_question, only: [:show, :edit, :update, :destroy]


def new
	@pe_question = @practice_exercise.pe_questions.new
end

def create
  @pe_question = @practice_exercise.pe_questions.create(pe_question_params) 
  @pe_question.practice_exercise_id = @practice_exercise.id
 
  
   if @practice_exercise.save
        redirect_to :back
    end

end


def edit
 

end


def show
  
end

def index
  @pe_questions = PeQuestion.all
end



def update
  @pe_question.update(pe_question_params)
   if @pe_question.update(pe_question_params)
       redirect_to :back
    end
end

 def destroy 
    @pe_question.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Mistake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end




private
   

    def set_pe_question
      @pe_question = PeQuestion.find(params[:id])
    end

     def set_practice_exercise
      @practice_exercise = PracticeExercise.find(params[:practice_exercise_id])
    end

   

   def pe_question_params
      params.require(:pe_question).permit(:practice_exercise_id, :sentence, pe_answers_attributes: [:id, :correct, :_destroy])
    end
end