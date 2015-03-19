class RankingController < ApplicationController
  helper_method :ranking
  def index
  	@ranking = User.all.order("point DESC,surname,name")
  end
end
