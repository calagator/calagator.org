Calagator.setup do |config|
  # Site name
  config.title = 'Calagator'

  # Site tagline
  config.tagline = "Portland's Tech Calendar"

  # Site URL with trailing slash
  config.url = 'http://calagator.org/'

  # Email address of administrator that will get exception notifications
  # and requests for assistance from users:
  config.administrator_email = 'calagator@stumptownsyndicate.org'

  # Admin username and password to use when accessing /admin pages
  config.admin_username = 'admin'
  config.admin_password = ENV['CALAGATOR_ADMIN_PASSWORD']

  # API key for Meetup.com, get your own from: http://www.meetup.com/meetup_api/key/
  config.meetup_api_key = ENV['MEETUP_API_KEY']

  # Search engine to use for searching events.
  # Values: :sql, :sunspot. Defaults to :sql.
  config.search_engine = :sunspot

  # Set the iCalendar SEQUENCE, which should be increased each time an event
  # is updated. If an admin needs to forcefully increment the SEQUENCE for all
  # events, they can set this icalendar_sequence_offset value to something
  # greater than 0.
  # config.icalendar_sequence_offset = 0

  # Configure a mapping provider
  # Stamen's terrain tiles will be used by default.
  # Map marker color
  # Values: red, darkred, orange, green, darkgreen, blue, purple, darkpuple, cadetblue
  config.mapping_marker_color = 'green'

  # A Google Maps API key is required to use Google's geocoding service
  # as well as to display maps using their API.
  # Get one at: https://developers.google.com/maps/documentation/javascript/tutorial#api_key
  config.mapping_google_maps_api_key = ENV['GOOGLE_MAPS_API_KEY']

  # The tile provider to use when rendering maps with Leaflet.
  # One of: leaflet, stamen, mapbox, google
  config.mapping_provider = 'google'

  # The tiles to use for the map, see the docs for individual Leaflet plugins.
  config.mapping_tiles = 'ROADMAP'

  # Other mapping examples:
  #
  # Stamen
  # (available tiles: terrain, toner, watercolor)
  # config.mapping_provider = 'stamen'
  # config.mapping_tiles = 'watercolor'
  #
  # MapBox Streets (use a map from your own account)
  # config.mapping_provider = 'mapbox'
  # config.mapping_tiles = 'examples.map-9ijuk24y'
  #
  # Google Maps
  # config.mapping_provider = 'google'
  # config.mapping_tiles = 'ROADMAP'
  #
  # OpenStreetMap
  # config.mapping_provider = 'leaflet'
  # config.mapping_tiles = 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png'
  #
  # Esri
  # (available tiles: Gray, Streets, Oceans, Topographic)
  # config.mapping_provider = 'esri'
  # config.mapping_tiles = 'Gray'

  # Map to display on /venues page:
  config.venues_map_options = {
    # Zoom magnification level:
    zoom: 12,
    # Center of the map, in latitude and longitude.
    # If no center is specified, the map will zoom to fit all markers.
    center: [45.518493, -122.660737]
  }

  # Patterns for detecting spam events and venues
  config.blacklist_patterns = File.read(Rails.root.join('config', 'blacklist.txt')).lines.map{|l| Regexp.new(l) }

end
