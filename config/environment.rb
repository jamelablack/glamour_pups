# Load the Rails application.
require File.expand_path('../application', __FILE__)

config.load_paths += %W(#{RAILS_ROOT}/app/concerns)

# Initialize the Rails application.
Rails.application.initialize!
