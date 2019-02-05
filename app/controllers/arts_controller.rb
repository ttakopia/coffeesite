class ArtsController < ApplicationController
  before_action :set_ranking_data
  skip_before_action :require_login,only: [:show, :index, :destroy]

  def index
    @tags = Art.tag_counts_on(:tags).order('count DESC')
    if params[:tag]
    @art = Art.tagged_with(params[:tag])
    @arr = @art.pluck(:address)
    @name = @art.pluck(:storename)
  else
    @art = Art.all
  end
  end

  def show
  	@art = Art.find(params[:id])
    REDIS.zincrby "arts/", 1, "#{@art.id}"
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
    authorize! @art
    @art = Art.find(params[:id])
  end

  def destroy
    authorize! @art
    @art = Art.find(params[:id])
    @art.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
  end
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
                :address,:tel,:web,:time,:day,:area,:how,:mapname, {mimages: []},:latitude,:longitude,:description,
                :inttitle1,:intcontent1,:inttitle2,:intcontent2,:intprofcontent,:intprofmenu,:intprofname,:tag_list,
                :coffeebean_list, :description, menus_attributes: [:id, :drink, :food, :other,:drinkprice,:foodprice,:otherprice, :_destroy],
                beans_attributes: [:id, :name, :price, :_destroy], brews_attributes: [:id, :name, :price, :_destroy], elsecoffees_attributes: [:id, :elsename, :_destroy])
	end
end