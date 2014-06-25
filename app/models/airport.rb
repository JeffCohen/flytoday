require 'open-uri'

class Airport < ActiveRecord::Base

  # validates :code, :name, presence: true

  validates_presence_of :code
  validates_presence_of :name

  def retrieve_data
    @data ||= begin
      url = URI.encode("http://services.faa.gov/airport/status/#{code}.json")
      JSON.parse(open(url).read)
    end
  end

  def delay?
    retrieve_data
    @data['delay'] == 'true'
  end

  def min_delay
    retrieve_data

    if @data["delay"] == 'true'
      return @data['status']['avgDelay']
    end

    return 0
  end

end
