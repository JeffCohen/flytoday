require 'open-uri'

class Airport

  attr_accessor :code
  attr_accessor :sport

  def self.all_codes
    ['ORD', "MDW", "SFO"]
  end

  def min_delay
    url = URI.encode("http://services.faa.gov/airport/status/#{code}.json")
    data = JSON.parse(open(url).read)

    if data["delay"] == 'true'
      return data['status']['avgDelay']
    end

    return 0
  end

end
