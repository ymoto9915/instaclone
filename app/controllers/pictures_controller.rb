class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def edit
  end

  def create
    picture = Picture.new(picture_params)
    picture.save!
    redirect_to pictures_url, notice: "投稿完了"
  end

  private

  def picture_params
    params.require(:picture).permit(:image)
  end
end
