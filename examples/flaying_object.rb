Dir[File.dirname(__FILE__) + '/lib/drone/adaptors/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/lib/drone/drivers/*.rb'].each {|file| require file }

connection :flaying_object, adapter: :flaying_object
device :drone, driver: :flaying_object, connetion: :flaying_object

work do
  on drone, ready: :fly
  drone.start
end

def fly(*data)
  drone.take_off
  after(5.seconds) { drone.hover.land }
  after(20.seconds) { drone.stop }
end