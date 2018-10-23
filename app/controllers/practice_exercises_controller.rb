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

def check_work(student)
  @attempts = 0
  @correct_answers = 0
@practice_exercise.pe_questions.each do |ques|
    if ques.pe_answers.where(user_id: student.id, correct: 2).count>0 
      @correct_answers += 1
      @attempts += ques.pe_answers.where(user_id: student.id, correct: 2).count
    elsif ques.pe_answers.where(user_id: student.id, correct: 3).count > 0
      @attempts += ques.pe_answers.where(user_id: student.id, correct: 3).count 
    elsif (ques.pe_answers.where(user_id: student.id, correct: 2).count + ques.pe_answers.where(user_id: current_user.id, correct: 1).count) > 0
      @attempts += (ques.pe_answers.where(user_id: student.id, correct: 2).count + ques.pe_answers.where(user_id: current_user.id, correct: 1).count)
    elsif ques.pe_answers.where(user_id: student.id).count == 0
  
    end
end
end



def edit


end

def add_pe_questions
      
      @practice_exercise.mistakes.each do |mis|
          if Sentence.includes(:mistakes).where(mistakes: { name: mis.name}).where(essay_id: Essay.where(assignment_id: @practice_exercise.assignment)).count > 0 
        Sentence.includes(:mistakes).where(mistakes: { name: mis.name}).where(essay_id: Essay.where(assignment_id: @practice_exercise.assignment)).each do |sen|
          if @practice_exercise.pe_questions.where(sentence: sen).count == 0       
        @practice_exercise.pe_questions.create(practice_exercise_id: @practice_exercise.id, sentence: sen.id)
        end
        end
        end

      end


    
end



def show
  
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
      params.require(:practice_exercise).permit(:user_id, :name, :description, :assignment, mistake_ids:[], pe_questions_attributes: [:id, :pe_answers, :_destroy], pe_answers_attributes: [:id, :correct, :_destroy])
    end
end


