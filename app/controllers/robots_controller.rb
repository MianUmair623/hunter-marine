class RobotsController < ApplicationController
  def index
    env = Rails.env.production? ? :production : :beta
    robots = File.read(Rails.root + "config/robots.#{env}.txt")
    render text: robots, layout: false, content_type: :'text/plain'
  end
end
