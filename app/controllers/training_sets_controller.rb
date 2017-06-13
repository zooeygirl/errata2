class TrainingSetsController < ApplicationController

before_action :set_training_set, only: [:edit, :update, :destroy]

def new
	@trainings_set = TrainingSet.new
end

def create
@training_set = TrainingSet.new(training_set_params)
end

def show  
    @training_set = TrainingSet.find(params[:id])
    if @training_set.training_ids.length == 0
    add_questions_to_question_set
    end
    correct_and_incorrect
end

def correct_and_incorrect
    correct_answers = 0
    incorrect_answers = 0
    @training_set.trainings.each do |train|
        if train.t_answers.where(user_id: current_user).first != nil 
            if train.t_answers.where(user_id: current_user).first.answer == train.answer
            correct_answers += 1
            else
            incorrect_answers += 1    
            end 
        end
    end
    @training_set.correct = correct_answers
    @training_set.incorrect = incorrect_answers
    @training_set.save
end


def add_questions_to_question_set
    @training_set.training_ids = []
		Essay.find(@training_set.essay_id).mistakes.each do |mis|
    if mis.trainings.count > 0 	 
			@training_set.training_ids = @training_set.training_ids.append(mis.trainings.offset(rand(mis.trainings.count)).first.id) 			
		end
    end
end


def update
@training_set.update(training_set_params)
redirect_to essay_training_set_path(Essay.find(@training_set.essay_id), @training_set)
end


end





private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_set
      @training_set = TrainingSet.find(params[:id])
    end

   

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_set_params
      params.require(:training_set).permit(:id, :user_id, :essay_id, :correct, :incorrect, training_ids:[], trainings_attributes:[:id, t_answers_attributes: [:id, :answer]] )
    end