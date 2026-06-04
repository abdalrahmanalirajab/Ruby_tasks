# base_handler.rb
# Shared abstract contract interface enforcing clean runtime expectations
class BaseHandler
  def call(event)
    raise NotImplementedError, "#{self.class} must implement the 'call' method."
  end
end