class ArtsController < ApplicationController
  def index
    @art = Art.all
  end

  def show
  	@art = Art.find(params[:id])
    @hash = Gmaps4rails.build_markers(@art) do |art, marker|
    marker.lat art.latitude
    marker.lng art.longitude
    marker.infowindow art.description
end
  end

  def new
  	@art = Art.new
  end

  def create
    @art = Art.new(art_params)
    if @art.save
      redirect_to @art
    else
      render 'new'
    end
  end

private
	def art_params
		params.require(:art).permit(:name,:content,:storename,
                :address,:tel,:web,:time,:day,:area,:how,:mapname, {images: []},:latitude,:longitude,:description)
	end
end


