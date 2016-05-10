class CorrectionsController < ApplicationController
  before_action :set_essay
  before_action :set_correction, only: [:show, :edit, :update, :destroy]

  # GET /corrections
  # GET /corrections.json
  def index
    @corrections = Correction.all
  end

  # GET /corrections/1
  # GET /corrections/1.json
  def show
  end

  # GET /corrections/new
  def new
    @correction = Correction.new
  end

  # GET /corrections/1/edit
  def edit

  end

  # POST /corrections
  # POST /corrections.json
  def create
    

    @correction = @essay.corrections.create(correction_params)
    @correction.essay_id = @essay.id

    redirect_to @essay

   
  end

  # PATCH/PUT /corrections/1
  # PATCH/PUT /corrections/1.json
  def update
    respond_to do |format|
      if @correction.update(correction_params)
        format.html { redirect_to @essay, notice: 'Correction was successfully updated.' }
        format.json { render :show, status: :ok, location: @correction }
      else
        format.html { render :edit }
        format.json { render json: @correction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corrections/1
  # DELETE /corrections/1.json
  def destroy
   

      if @correction.destroy
      flash[:success] = "Correction item was deleted"
    else
      flash[:error] = "Essay correction could not be deleted"
    end
    redirect_to @essay

  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_correction
      @correction = Correction.find(params[:id])
    end

    def set_essay
      @essay = Essay.find(params[:essay_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def correction_params
      params.require(:correction).permit(:essay_id, mistake_ids:[])
    end
end
