class StaticPagesController < ApplicationController
  def home
    @recent_campaigns = Campaign.last(3)
  end
end
