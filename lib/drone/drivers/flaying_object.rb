require 'drone/drivers/driver'

module Drone
  module Drivers

    class FlayingObject < Driver
      COMMANDS = [:start, :stop, :hover, :land, :take_off, :up, :down, :left, :right, :forward, :backward, :turn_left, :turn_right].freeze

      def start(nav=nil)
        publish(event_topic_name("ready"))
      end

    end
  end
end
