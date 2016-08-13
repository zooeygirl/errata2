class PeAnswersController < ApplicationController
  before_action :set_practice_exercise
  before_action :set_pe_question
  before_action :set_pe_answer, only: [:show, :edit, :update, :destroy]


def new
  @pe_answer = @pe_question.pe_answers.new
end

def create
  @pe_answer = @pe_question.pe_answers.create(pe_answer_params) 
  @pe_answer.pe_question_id = @pe_question.id
  @pe_answer.correct = 3
  @pe_answer.user_id = current_user.id
  @pe_answer.practice_exercise_id = @practice_exercise.id
  
   if @pe_answer.save
        compare_answers
        redirect_to practice_exercise_path(@practice_exercise)
    end

end

def compare_answers
    if @pe_question.pe_answers.count>0
    @pe_question.pe_answers.where("correct != 3").each do |a|
      if a.answer.eql?(@pe_answer.answer) == true
        @pe_answer.update_attribute(:correct, a.correct)
      end
    end
  end
end

def compare_existing_answers
  @pe_question.pe_answers.where("correct == 3").each do |a|
    if a.answer.eql?(@pe_answer.answer) == true
      a.update_attribute(:correct, @pe_answer.correct)
    end
  end
end


def edit
 
end


def show
  
end

def index
  @pe_answers = PeAnswer.all
end



def update
  @pe_answer.update(pe_answer_params)
   if @pe_answer.update(pe_answer_params)
      compare_existing_answers
       redirect_to practice_exercise_path(@practice_exercise)
    end
end

 def destroy 
    @pe_answer.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end




private
   

    def set_pe_answer
      @pe_answer = PeAnswer.find(params[:id])
    end

     def set_pe_question
      @pe_question = PeQuestion.find(params[:pe_question_id])
    end

  def set_practice_exercise
      @practice_exercise = PracticeExercise.find(params[:practice_exercise_id])
    end
   

   def pe_answer_params
      params.require(:pe_answer).permit(:user_id, :pe_question_id, :answer, :correct)
    end
end