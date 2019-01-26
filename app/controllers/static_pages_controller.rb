class StaticPagesController < ApplicationController
	 before_action :set_ranking_data
   skip_before_action :require_login

  def home
  	@tags = Art.tag_counts_on(:tags).order('count DESC')
    @beans = Art.tag_counts_on(:coffeebeans).order('count DESC')
    @arr = Art.pluck(:address)
    if params[:tag]
    @art = Art.tagged_with(params[:tag])
    @art = Art.tagged_with(params[:coffeebean])
  else
    @art = Art.all
  end
  end

  def set_ranking_data
    ids = REDIS.zrevrangebyscore "arts/", "+inf", 0, limit: [0, 3]
    @ranks = Art.where(id: ids).sort_by{ |art| ids.index(art.id.to_s) }
  end

  def about
  end

  def help
  end
end
