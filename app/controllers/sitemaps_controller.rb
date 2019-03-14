class SitemapsController < ApplicationController
	skip_before_action :require_login,only: [:index]
def index
    @domain = "#{request.protocol}#{request.host}"
    @art = Art.all
    @memo = Memo.all

    respond_to do |format|
      format.xml
  	end
  end
end
