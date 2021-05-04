class BoatPositionWorker
  include Sidekiq::Worker

  def perform(*args)
    require 'open-uri'
    url = 'https://hmt.towworks.com/Custom/HMT/Processes/GetBoatPositionData.aspx?IDENTIFIER=5c64a0de-def0-6576-968d-f676527ce675'
    position_file = open(url).read
    positions = JSON.parse(position_file)
    positions.each do |position|
      boat = Boatpositions.find_or_create_by(boatname: position['boat'])
      if boat
        boat.mile_marker = position['waterwayMile']
        boat.direction = position['direction']
        boat.river = position['waterway']
        boat.delay = ''
        boat.turn = ''
        boat.charter = ''
        boat.updated_at = DateTime.parse(position['positionTime'] + ' -0500')
        boat.save
      end
    end
  end
end
