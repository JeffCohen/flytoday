require 'open-uri'

class Airport < ActiveRecord::Base

  def min_delay
    url = URI.encode("http://services.faa.gov/airport/status/#{code}.json")
    data = JSON.parse(open(url).read)

    if data["delay"] == 'true'
      return data['status']['avgDelay']
    end

    return 0
  end

end
