class SitemapsController < ApplicationController
	def index
    @domain = "#{request.protocol}#{request.host}"
    @art = Art.all
    @memo = Memo.all
  end
end
