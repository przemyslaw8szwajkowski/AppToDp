class RankingController < ApplicationController
  def index
  	@ranking = User.all.order("point DESC,surname,name")
  end
end
