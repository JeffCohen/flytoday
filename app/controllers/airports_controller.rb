class AirportsController < ApplicationController

  before_action :find_airport, :only => [:destroy, :edit, :update, :show]

  def find_airport
    @airport = Airport.find(params["id"])
  end

  def destroy
    @airport.destroy
    redirect_to airports_url
  end

  def edit
  end

  def update
    @airport.code = params["code"]
    @airport.name = params["name"]
    @airport.save
    redirect_to airport_url(@airport.id)
  end

  def new
    @airport = Airport.new
  end

  def create
    airport = Airport.new
    airport.code = params[:airport][:code]
    airport.name = params[:airport][:name]
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
  end

end
