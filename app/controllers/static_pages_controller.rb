class StaticPagesController < ApplicationController
  def home
  	@art = Art.all
  end

  def about
  end

  def help
  end
end
