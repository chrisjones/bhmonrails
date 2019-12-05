class HomePageController < ApplicationController
  def index
    @lead = Lead.new
  end
end
