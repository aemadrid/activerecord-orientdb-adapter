config = { 
  :username => ENV[ "ORIENTDB_USERNAME" ] || 'admin',
  :password => ENV[ "ORIENTDB_PASSWORD" ] || 'admin',
  :adapter  => 'orientdb',
  :host     => ENV[ "ORIENTDB_HOST" ] || 'localhost',
  :database => ENV[ "ORIENTDB_DATABASE" ] || 'weblog_development'
}

ActiveRecord::Base.establish_connection( config )
