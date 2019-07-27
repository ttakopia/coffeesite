class FavoritesController < ApplicationController
  before_action :require_login
  before_action :set_art, only:[:create,:destroy]

  def create
    @favorite = Favorite.create(user_id: current_user.id, art_id: params[:art_id])
    respond_to do |format|
      format.html
      format.js { render layout: false, content_type: 'text/javascript' }
    end
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, art_id: params[:art_id])
    favorite.destroy
    respond_to do |format|
      format.html
      format.js { render layout: false, content_type: 'text/javascript' }
    end
  end

  private
    def set_art
      @art = Art.find(params[:art_id])
    end
end