class FileHandler < BaseHandler
  def initialize(log_filename = "lifetrack.log")
    @file = log_filename
  end

  def call(event)
    File.open(@file, "a") do |f|
      f.puts "[#{event.timestamp}] #{event.type.upcase} — #{event.description} (#{event.duration} min)"
    end
  end
end