class WelcomeController < ApplicationController
  def index
  	@homeland = 'US'
  	@countries = []
    Destination.all.each do |destination|
      @countries << destination.country
    end
    @countries.uniq!
  	@family = {"Mom" => "Marie", "Dad" => "Claude"}
  	@images = ["atlanta.jpg", "cnn.jpg", "ebenezer.jpg", "varsity.jpg"]
  	@welcome = params[:welcome]
  	@margin = params[:margin]
  	@color = params[:color]
  	if @color
  		session[:color] = @color
  	end

  	if params[:color]
  	else
  		@color = session[:color]
  	end
  end

  def about
  	@color = session[:color]
  	@size = params[:size]
  	@margin = params[:margin]
  end

  def contact
  	@color = session[:color]
  	@margin = params[:margin]
  end
end
