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
    @picture = Picture.find(params[:id])
  end

  def update
    picture = Picture.find(params[:id])
    picture.update!(picture_params)
    redirect_to pictures_url, notice: "編集しました"
  end

  def create
    picture = Picture.new(picture_params)
    picture.save!
    redirect_to pictures_url, notice: "投稿完了"
  end

  def destroy
    picture = Picture.find(params[:id])
    picture.destroy
    redirect_to pictures_url, notice: "写真を削除しました"
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :description)
  end
end
