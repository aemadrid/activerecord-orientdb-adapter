# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name              = 'activerecord-orientdb-adapter'
  s.version           = '0.1'
  s.date              = '2011-12-16'

  s.platform = Gem::Platform.new([nil, "java", nil])
  s.rubyforge_project = %q{jruby-extras}

  s.summary     = "ActiveRecord adapter for OrientTechnologies OrientDB."
  s.description = "ActiveRecord adapter for OrientTechnologies OrientDB. Only for use with JRuby. Requires separate OrientDB JDBC driver."

  s.authors  = ["Adrian Madrid"]
  s.email    = 'aemadrid@gmail.com'
  #s.homepage = ''
  s.require_paths = %w[lib]
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md LICENSE]

  # = MANIFEST =
  s.files = %w[
    LICENSE
    README.md
    Rakefile
    activerecord-orientdb-adapter.gemspec
    lib/active_record/connection_adapters/orientdb_adapter.rb
    lib/activerecord-orientdb-adapter.rb
    lib/arjdbc/orientdb.rb
    lib/arjdbc/orientdb/adapter.rb
    lib/arjdbc/orientdb/connection_methods.rb
    lib/arjdbc/discover.rb
    test/orientdb_simple_test.rb
    test/db/orientdb.rb
  ]
  # = MANIFEST =

  s.test_files = s.files.select { |path| path =~ /^test\/.*test.*\.rb/ }

  s.add_dependency(%q<jdbc-orientdb>, [">= 1.0"])
  s.add_dependency(%q<activerecord-jdbc-adapter>, [">= 1.0.0"])

  s.rubygems_version = %q{1.3.7}
  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3
  end
end
