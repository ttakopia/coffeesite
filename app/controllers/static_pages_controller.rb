class StaticPagesController < ApplicationController
	 # before_action :set_ranking_data
   skip_before_action :require_login

  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @@prodcut.save
        format.js #create.js.erbをredeer
      else
        format.js { head :no_content } #エラーの時は返さない
      end
    end
  end

  def new
    respond_to do |format|
      format.json {
        render json: {shape: shape}, status: 200
      }
    end
  end

  def home
  	@tags = Art.tag_counts_on(:tags).order('count DESC')
    @beans = Art.tag_counts_on(:coffeebeans).order('count DESC')
    @arr = Art.pluck(:address)
    @ars = Art.pluck(:storename)
    @ari = Art.pluck(:id)
    @memos = Memo.all
    if params[:tag]
    @art = Art.tagged_with(params[:tag])
    @art = Art.tagged_with(params[:coffeebean])
  else
    @art = Art.all.reverse
  end
  end

  def set_ranking_data
    ids = REDIS.zrevrangebyscore "arts/", "+inf", 0, limit: [0, 3]
    @ranks = Art.where(id: ids).sort_by{ |art| ids.index(art.id.to_s) }
  end

  def about
  end

  def column
    @memos = Memo.all
  end

  def help
  end

  private

  def shape
    ['✊', '✌️', '✋'].sample
  end
end
