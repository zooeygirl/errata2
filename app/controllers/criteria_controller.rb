class CriteriaController < ApplicationController
	before_action :set_criterium, only: [:edit, :show, :destroy, :update]
	before_action :set_evaluation

def new
	@criterium = @evaluation.criteria.new
end

def create
	@criterium = @evaluation.criteria.create(criterium_params)
	@criterium.evaluation_id = @evaluation.id
	redirect_to evaluation_path(@evaluation)
end

def edit
end

def index
	@criteria = Criterium.all 
end

def update
	@criterium.update(criterium_params)
	redirect_to evaluation_path(@evaluation)
end


def destroy
	@criterium.destroy
	redirect_to evaluation_path(@evaluation)
end


private

  def set_criterium
      @criterium = Criterium.find(params[:id])
  end

def set_evaluation
	@evaluation = Evaluation.find(params[:evaluation_id])
end


 def criterium_params
      params.require(:criterium).permit(:evaluation_id, :level, :name, :percentage, :outof)
 end


end
