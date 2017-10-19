class WebpagesController < ApplicationController
  def new
    @webpage = Webpage.new
  end

  def create
    @webpage = Webpage.new(webpage_params)

    respond_to do |format|
      if @webpage.save
        format.html { redirect_to @webpage, notice: 'Webpage was successfully created.' }
        format.json { render :show, status: :created, location: @webpage }
      else
        format.html { render :new }
        format.json { render json: @webpage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @webpage.update(webpage_params)
        format.html { redirect_to @webpage, notice: 'A página foi atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @webpage }
      else
        format.html { render :edit }
        format.json { render json: @webpage.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @webpage = Webpage.find(params[:id])
  end

  def destroy
    @webpage = Webpage.find(params[:id])
    @webpage.destroy
 
    redirect_to webpages_path
  end

  def index
    @webpages = Webpage.all
  end

  def show
    @webpage = Webpage.find(params[:id])
  end

  private
    def webpage_params
      params.require(:webpage).permit(:title, :description, :body, :author, :created_at, :updated_at)
    end
    
end
