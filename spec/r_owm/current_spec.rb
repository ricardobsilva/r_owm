# frozen_string_literal: true

RSpec.describe 'ROwm::Current' do
  describe 'foo' do
    it 'foo ', :vcr do
      params = {city_id: '3395981'}

      current = ROwm::Current.new(params).call

      expect(current).to include ("coord")
    end
  end
end
