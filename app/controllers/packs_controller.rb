class PacksController < ApplicationController
  def new
    @pack = Pack.new
  end

  def create
    @pack = Pack.new(pack_params)
    @pack.name = "My #{pack_params[:location_name]} Starter Pack"
    temperature = WeatherAdapter.get_temp(pack_params[:location_name]).to_i
    weather_desc = WeatherAdapter.get_description(pack_params[:location_name])
    @pack.user = User.find(1)  # This is just so the user persists while we don't have authentication setup
    @pack.save
    @pack.get_items_to_display(temperature, weather_desc)
    redirect_to pack_path(@pack) #we are actually editing the pack here!
  end

  def show
    #code
  end

  private

  def pack_params
    params.require(:pack).permit(:location_name)
  end

end
