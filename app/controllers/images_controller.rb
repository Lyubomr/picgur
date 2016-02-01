class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    # make a new picture with what picture params returns
    @image = Image.new(image_params)
      if @image.save
        # if the save is successful then go to index.html.erb
        redirect_to images_url
      else
        # otherwise render the view associated with the action :new (new.html.erb)
        render :new
      end
  end

  private
  def image_params
    params.require(:image).permit(:artist, :title, :url)
  end

end
