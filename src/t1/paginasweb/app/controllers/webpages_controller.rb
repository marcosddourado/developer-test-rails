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
  end
end
