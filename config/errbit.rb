# Require the airbrake gem in your App.
# ---------------------------------------------
#
# Ruby - In your Gemfile
# gem 'airbrake', '~> 5.0'
#
# Then add the following to config/initializers/errbit.rb
# -------------------------------------------------------

Airbrake.configure do |config|
  config.host = 'http://errbit:3000'
  config.project_id = true
  config.project_key = '1d3156be53c42a042e9da9cd47df9006'
end
