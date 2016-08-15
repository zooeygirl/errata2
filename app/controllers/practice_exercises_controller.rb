class PracticeExercisesController < ApplicationController
  
  before_action :set_practice_exercise, only: [:show, :edit, :update, :destroy]


def new
	@practice_exercise = current_user.practice_exercises.new
end

def create
  @practice_exercise = current_user.practice_exercises.create(practice_exercise_params) 
  @practice_exercise.user_id = current_user.id
 
  
   if @practice_exercise.save
        add_pe_questions
        redirect_to @practice_exercise
    end


end


def edit
 

end

def add_pe_questions
     if Sentence.includes(:mistakes).where(mistakes: { category: @practice_exercise.mistake_category}).where(essay_id: Essay.where(assignment_id: @practice_exercise.assignment)).count > 0 
        Sentence.includes(:mistakes).where(mistakes: { category: @practice_exercise.mistake_category}).where(essay_id: Essay.where(assignment_id: @practice_exercise.assignment)).each do |sen|
        if @practice_exercise.pe_questions.where(sentence: sen).count == 0       
        @practice_exercise.pe_questions.create(practice_exercise_id: @practice_exercise.id, sentence: sen.id)
      end
      end
      end
end



def show
  add_pe_questions
end

def index
  @practice_exercises = PracticeExercise.all
end



def update
  @practice_exercise.update(practice_exercise_params)
   if @practice_exercise.update(practice_exercise_params)
      add_pe_questions
       redirect_to practice_exercise_path(@practice_exercise)
    end
end

 def destroy 
    @practice_exercise.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Mistake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end




private
   

    def set_practice_exercise
      @practice_exercise = PracticeExercise.find(params[:id])
    end

   

   def practice_exercise_params
      params.require(:practice_exercise).permit(:user_id, :name, :description, :assignment, :mistake_category, pe_questions_attributes: [:id, :pe_answers, :_destroy], pe_answers_attributes: [:id, :correct, :_destroy])
    end
end


