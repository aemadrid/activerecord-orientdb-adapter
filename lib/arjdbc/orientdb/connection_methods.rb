class ActiveRecord::Base
  class << self
    def orientdb_connection(config)
      config[:driver] ||= "com.orientechnologies.orient.jdbc.OrientJdbcDriver"
      config[:port]   ||= 2240
      config[:engine] ||= 'remote'
      config[:url]    ||= "jdbc:orient:#{config[:engine]}:#{config[:host]}:#{config[:port]}/#{config[:database]}"
      jdbc_connection(config)
    end
  end
end
