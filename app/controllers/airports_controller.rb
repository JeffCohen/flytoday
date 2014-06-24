class AirportsController < ApplicationController

  def new

  end

  def create
    airport = Airport.new
    airport.code = params["code"]
    airport.name = params["name"]
    airport.save
    redirect_to airports_url
  end

  def index
    @airports = Airport.all

    respond_to do |format|
      format.html # render index.html.erb
      format.json { render :json => @airports }
    end

  end

  def show
    @airport = Airport.find(params[:id])
  end

end
