class TAnswersController < ApplicationController

before_action :set_t_answer, only: [:show, :edit, :update, :destroy]
before_action :set_user, except: [:update]
before_action :set_training, except: [:update]
before_action :set_training_set, except: [:update, :create]




def new
	@t_answer = TAnswer.new
end


def create
	@t_answer = TAnswer.new(t_answer_params)
	@t_answer.training_id = @training.id
  @t_answer.user_id = @user.id
	@t_answer.save
	redirect_to :back
end

def edit 
end

def update
  @t_answer.update(t_answer_params)
   if @t_answer.update(t_answer_params)
        redirect_to :back
      end
end



def show
end


end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_training
      @training = Training.find(params[:training_id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def set_training_set
      @training_set = TrainingSet.find(params[:training_set_id])
    end

    def set_t_answer
    	@t_answer = TAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_answer_params
      params.require(:t_answer).permit(:id, :training_id, :user_id, :answer)
    end
