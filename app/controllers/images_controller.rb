class ImagesController < ApplicationController
  def index
    @image = Image.new
  end

  def create
    @image = Image.create(image_params)
  end

  private

  def image_params
    params.require(:image).permit(:name, :description, :image)
  end
end
