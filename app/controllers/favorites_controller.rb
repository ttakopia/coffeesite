class FavoritesController < ApplicationController
  before_action :set_art, only: [:create, :destroy]

  def create
    @favorite = Favorite.find_or_create_by(
            user_id: current_user.id,
            art_id: params[:art_id]
            )
    @favorites = Favorite.where(art_id: params[:art_id])
    @art.reload
  end

  def destroy
    favorite = Favorite.find_by(
            user_id: current_user.id,
            art_id: params[:art_id]
        )
        favorite.destroy
        @favorites = Favorite.where(art_id: params[:art_id])
        @art.reload
  end

  private

  def set_art
  	@art = Art.find(params[:art_id])
  end
end