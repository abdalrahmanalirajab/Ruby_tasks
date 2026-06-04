# event.rb
# Struct keeping track of unified fields across any potential plugin
class Event
  attr_reader :type, :description, :duration, :timestamp

  def initialize(type, description, duration)
    @type = type
    @description = description
    @duration = duration
    @timestamp = Time.now.strftime("%Y-%m-%d %H:%M")
  end
end

