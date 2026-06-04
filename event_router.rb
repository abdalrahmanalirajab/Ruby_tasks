# event_router.rb
# Implements Observer and Dependency Inversion. Zero hardcoded concrete references.
class EventRouter
  def initialize
    @handlers = []
  end

  def register_handler(handler)
    @handlers << handler
  end

  def dispatch(event)
    @handlers.each { |handler| handler.call(event) }
  end
end