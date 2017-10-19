class WebpagesController < ApplicationController
  def new
  end

  def create
    @webpage = Webpage.new(params[:webpage])

    @webpage.save
    redirect_to @webpage
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
    @webpage = Webpage.find(params[:id])
  end

  private
    def webpage_params
      params.require(:webpage).permit(:title, :description, :body, :author, :created_at, :updated_at)
    end
end
