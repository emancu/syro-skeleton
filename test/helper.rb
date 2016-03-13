require "protest"
require "rack/test"
require_relative "../app"

Protest.report_with(:progress)

def deny(condition, message="Expected condition to be unsatisfied")
  assert !condition, message
end

class Driver
  include Rack::Test::Methods

  def initialize(app)
    @app = app
  end

  def app
    @app
  end
end
