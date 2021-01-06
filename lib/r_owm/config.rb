require 'json'
require 'httparty'

class ROwm::Config
  def initialize(city_id, endpoint)
    @api_key = ENV['OPEN_WEATHER_MAP']
    @city_id = city_id
    @endpoint = endpoint
    @api_response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=Maceio&units=metric&appid=e88c1515be1de476a1469d4bdb9cb1eb&lang=pt_br")
  end

  def call
    @api_response
  end
end