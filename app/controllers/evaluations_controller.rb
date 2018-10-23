class EvaluationsController < ApplicationController

before_action :set_evaluation, only: [:show, :edit, :update, :destroy, :check_percentage]


def new
	@evaluation =  current_user.evaluations.new
end

def create
	@evaluation = current_user.evaluations.create(evaluation_params)
	@evaluation.user_id = current_user.id
	@evaluation.hundred = 0.00
	redirect_to evaluation_path(@evaluation)
end

def destroy
	@evaluation.destroy
	redirect_to :back
end


def update
	@evaluation.update(evaluation_params)
	redirect_to evaluation_path(@evaluation)
end

def edit
end

def index
	@evaluations = Evaluation.all
end

def show
	check_percentage
end

def check_percentage
	i=0
	@evaluation.criteria.each do |crit|
		i+=crit.percentage	
	end
	if i == 100
		@evaluation.update_attribute(:hundred, 100.00)
	else
		@evaluation.update_attribute(:hundred, i)
	end
end 


private


 def set_evaluation
      @evaluation = Evaluation.find(params[:id])
  end


 def evaluation_params
      params.require(:evaluation).permit(:user_id, :assignment_id, :name, :hundred)
  end



end
