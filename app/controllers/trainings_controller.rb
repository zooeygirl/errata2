class TrainingsController < ApplicationController

before_action :set_training, only: [:show, :edit, :update, :destroy]
before_action :set_mistake, except: [:show]




def new
	@training = Training.new
end


def create
	@training = Training.new(training_params)
	@training.mistake_id = @mistake.id
	@training.save
	redirect_to mistake_trainings_path(@mistake)
end



def index
	@trainings = Training.all
end

def show
end





end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_training
      @training = Training.find(params[:id])
    end

    def set_mistake
    	@mistake = Mistake.find(params[:mistake_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_params
      params.require(:training).permit(:id, :mistake_id, :question, :explanation, :answer)
    end
