class StaticPagesController < ApplicationController
  def team
  end
  def contact
  end
  def home
  	# @title_array = []
  	# index_array = []
  	@gossip_array = Gossip.all
  	# gossip_array.each_with_index {|t,i| title_array << t.tiltle }
  end
end
