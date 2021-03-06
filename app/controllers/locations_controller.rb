class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])

  end

  def new
    @location = Location.new
  end

  def edit
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(params[:location])
    if @location.save
      redirect_to @location, notice: 'Location was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(params[:location])
      redirect_to @location, notice: 'Location was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_url
  end

  def pledge
    @pledge_locations = Location.all
    @geojson = Array.new

    @pledge_locations.each do |pledge_location|
      @geojson << {
          type: 'Feature',
          geometry: {
          type: 'Point',
          coordinates: [pledge_location.longitude, pledge_location.latitude]
      },
          properties: {
            name: '1 to 1 movement',
            address: pledge_location.address,
            :'marker-color' => '#00607d',
            :'marker-symbol' => 'circle',
            :'marker-size' => 'medium'
          }
      }
    end
    respond_to do |format|
      format.html
      format.json { render json: @geojson }  # respond with the created JSON object
    end
  end
end
