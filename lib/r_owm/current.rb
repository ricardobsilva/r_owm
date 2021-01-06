require 'r_owm/config'

class ROwm::Current
  def initialize(params)
    @params = params
    @api = ROwm::Config.new(city_id, endpoint).call
  end

  def call
    @api
  end

  private

  def endpoint
    'weather'
  end

  def city_id
    @params[:city_id]
  end
end