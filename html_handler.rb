class HtmlHandler < BaseHandler
  def initialize(html_filename = "dashboard.html")
    @file = html_filename
    @events = []
  end

  def call(event)
    @events << event
    regenerate_html
  end

  private

  def regenerate_html
    File.open(@file, "w") do |f|
      f.puts "<html><head><title>LifeTrack Dashboard</title></head><body>"
      f.puts "<h1>Activity Log</h1><ul>"
      @events.each do |e|
        f.puts "<li><strong>[#{e.timestamp}] #{e.type}</strong>: #{e.description} (#{e.duration} mins)</li>"
      end
      f.puts "</ul></body></html>"
    end
  end
end