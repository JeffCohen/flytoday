class AirportsController < ApplicationController

  def list
    @airports = Airport.all
    # render 'list'
    # render :text => 'Wazzzzup!', :status => 200
    # render :status => 302, :location => 'http://www.apple.com'
    # redirect_to 'http://www.apple.com'
  end

  def show
    @airport = Airport.find(params[:id])
  end

end
