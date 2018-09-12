require 'drone/adaptors/adaptor'

module Drone
  module Adaptors

    class FlayingObject < Adaptor
      attr_reader :flaying_object

      def connect
        @flaying_object = true
        puts 'Connected'
        super
      end

      def disconnect
        flaying_object.land
        flaying_object.stop
        super
      end

      def method_missing(method_name, *arguments, &block)
        flaying_object.send(method_name, *arguments, &block)
      end

    end

  end
end