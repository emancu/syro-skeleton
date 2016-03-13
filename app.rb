require "syro"
require "mote"
require "shield"
require "tas"

# Path to project components
GLOB = "./{lib,decks,routes,models}/*.rb"

# Load components
Dir[GLOB].each { |file| require file }

Web = Syro.new(Frontend) do
  run Guests
end

# Rack application
App = Rack::Builder.new do
  use Rack::MethodOverride
  use Rack::Session::Cookie, secret: ENV["RACK_SESSION_SECRET"]
  use Rack::Static, urls: %w[/css /fonts /img], root: "./public"

  run Web
end
