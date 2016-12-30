class LinksController < ApplicationController

before_action :set_link, only: [:show, :edit, :update, :destroy, :set_sentences, :update_words_in_mistakes]
before_action :set_mistake


  def new
  	@link = Link.new
  end

  def create
  	@link = @mistake.links.create(link_params) 
    @link.mistake_id = @mistake.id
    respond_to do |format|
      format.html {redirect_to @mistake}
      format.js
    end
    
  end


  def edit
  end

  def show
  end


  def update
    @link.update(link_params)
    redirect_to @mistake
  end

  def destroy
    @link.destroy
     respond_to do |format|
      format.html {redirect_to @mistake}
      format.js
    end
  end

 


 private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end


 def set_mistake
    	@mistake = Mistake.find(params[:mistake_id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:mistake_id, :media, :url, :rating, :language, :description)
    end


end
