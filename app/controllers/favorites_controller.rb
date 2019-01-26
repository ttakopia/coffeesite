class FavoritesController < ApplicationController
  before_action :set_art, only: [:create, :destroy]

  def create
  	@favorite = Favorite.create(user_id: current_user.id, art_id: params[:art_id])
    @favorites = Favoite.where(art_id: params[:art_id])
    @art = Art.find(params[:art_id])
    @arts = Art.all
  end

  def destroy
  	favorite = Favorite.find_by(user_id: current_user.id, art_id: params[:art_id])
    favorite.destroy
  end

  private

  def set_art
  	@art = Art.find(params[:art_id])
  end
end