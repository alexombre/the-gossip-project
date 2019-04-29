class GossipController < ApplicationController
  def show
  	@gossip = Gossip.find(params[:id])
  	@user = User.find(@gossip.user_id)
  end
end
