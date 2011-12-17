# arjdbc/discover.rb: Declare ArJdbc.extension modules in this file
# that loads a custom module and adapter.

module ::ArJdbc
  extension :OrientDB do |name|
    if name =~ /orient/i
      require 'arjdbc/orientdb'
      true
    end
  end
end
