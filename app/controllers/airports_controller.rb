class AirportsController < ApplicationController

  def new

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
