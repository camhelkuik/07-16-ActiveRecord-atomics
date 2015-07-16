require "pry"
require "active_record"
require "sqlite3"
require "sinatra"
require "sinatra/reloader"
require 'active_support/core_ext/object/blank'


ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'database.db')

# So that ActiveRecord explains the SQL it's running in the logs.
ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)

require_relative "database_setup.rb"

# Models
require_relative "models/photographer.rb"
require_relative "models/album.rb"
require_relative "models/photo.rb"


binding.pry