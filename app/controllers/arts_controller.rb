class ArtsController < ApplicationController
  before_action :set_ranking_data

  def index
    @tags = Art.tag_counts_on(:tags).order('count DESC')
    if params[:tag]
    @art = Art.tagged_with(params[:tag])
  else
    @art = Art.all
  end
  end

  def show
  	@art = Art.find(params[:id])
    REDIS.zincrby "arts/", 1, "#{@art.id}"
    @hash = Gmaps4rails.build_markers(@art) do |art, marker|
    marker.lat art.latitude
    marker.lng art.longitude
    marker.infowindow art.description
    end
  end

  def set_ranking_data
    ids = REDIS.zrevrangebyscore "arts/", "+inf", 0, limit: [0, 6]
    @ranks = Art.where(id: ids).sort_by{ |art| ids.index(art.id.to_s) }
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

  def edit
    @art = Art.find(params[:id])
  end

  def update
  @art = Art.find(params[:id])
  if @art.update_attributes(art_params)
   flash[:success] = 'Profile updated successfully'
   redirect_to @art
  else
    render 'edit'
  end
end

private
	def art_params
		params.require(:art).permit(:name,:content,:storename,
                :address,:tel,:web,:time,:day,:area,:how,:mapname, {images: []},:latitude,:longitude,:description,
                :inttitle1,:intcontent1,:inttitle2,:intcontent2,:intprofcontent,:intprofmenu,:intprofname,:tag_list,:skill_list)
	end
end