class ActiveRecord::Base
  class << self
    def orientdb_connection( config )
      config[:port] ||= 2240
      config[:url] ||= "jdbc:orient://#{config[:host]}:#{config[:port]}/#{ config[:database]}"
      config[:driver] ||= "com.orientechnologies.orient.jdbc.OrientJdbcDriver"
      jdbc_connection(config)
    end
  end
end
