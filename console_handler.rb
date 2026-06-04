class ConsoleHandler < BaseHandler
  def call(event)
    puts "[#{event.timestamp}] #{event.type.upcase} — #{event.description} (#{event.duration} min)"
  end
end