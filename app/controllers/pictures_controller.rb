class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def like
    @pictures = Picture.all
    @picture = Picture.find(params[:id])
    @picture.update_likes(current_user)

  end


end
