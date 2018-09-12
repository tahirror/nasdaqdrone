
connection :flaying_object, adapter: :flaying_object
flaying_object :flaying_object, driver: :flaying_object, connetion: :flaying_object

work do
  on flaying_object, ready: :fly
  flaying_object.start
end

def fly(*data)
  flaying_object.take_off
  after(5.seconds) { flaying_object.hover.land }
  after(20.seconds) { flaying_object.stop }
end