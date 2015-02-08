Calagator::Application.config.middleware.use Rack::Robustness do |g|
  g.no_catch_all
  g.on(ArgumentError) { |ex| 400 }
  g.content_type 'text/plain'
  g.body{ |ex| ex.message.to_s.encode('UTF-8', {:invalid => :replace, :undef => :replace, :replace => '?'}) }
  g.ensure(true) { |ex| env['rack.errors'].write(ex.message.to_s.encode('UTF-8', {:invalid => :replace, :undef => :replace, :replace => '?'})) }
end

