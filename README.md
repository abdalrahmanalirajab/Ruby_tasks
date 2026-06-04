# Ruby_tasks
Phase 3 — Bonus Architect's Test Written Answers
What would you name the new class and where would it live?
SlackHandler, living inside its own file slack_handler.rb.

What is the one method it must implement?
The #call(event) public instance method.

List every existing file you would open to plug it in.
Only main.rb (the entry-point script to instantiate and call router.register_handler(SlackHandler.new)).

If that list includes the router or shared interface — stop.
It does not include them! The design obeys the Open/Closed Principle perfectly since we extend system behavior solely through addition without changing core infrastructure structures