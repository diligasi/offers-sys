class HomeController < ApplicationController

  def index
    @offers = Offer.where(state: 'enabled').order(:premium)
  end
end