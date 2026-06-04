# main.rb
# Wiring setup up everything explicitly at boot injection runtime.

router = EventRouter.new

# Register dynamic loosely coupled handlers seamlessly
router.register_handler(ConsoleHandler.new)
router.register_handler(FileHandler.new)
router.register_handler(HtmlHandler.new)

OPTIONS = {
  1 => "WORK",
  2 => "STUDY",
  3 => "EXERCISE",
  4 => "MEAL"
}

puts "=== LifeTrack ==="
loop do
  OPTIONS.each { |k, v| puts "#{k}. Log a #{v.downcase} session" }
  puts "5. Exit"
  puts
  print "Choose an option: "
  choice = gets.to_i

  break if choice == 5

  unless OPTIONS.key?(choice)
    puts "Invalid option. Try again.\n\n"
    next
  end

  print "Description: "
  description = gets.chomp

  print "Duration (minutes): "
  duration = gets.to_i

  # Instantiating the immutable state container event instance
  event = Event.new(OPTIONS[choice], description, duration)
  
  # Fan out to all outputs simultaneously 
  router.dispatch(event)
  
  puts "✓ Event logged.\n\n"
end