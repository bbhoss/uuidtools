require 'rake'
Gem::Specification.new do |s|
  unless s.respond_to?(:add_development_dependency)
    puts "The gem spec requires a newer version of RubyGems."
    exit(1)
  end

  s.name = "uuidtools"
  s.version = "2.1.1"
  s.summary = "UUID generator"
  s.description = "A simple universally unique ID generation library."

  s.files = FileList[
    "lib/**/*", "spec/**/*", "vendor/**/*",
    "tasks/**/*", "website/**/*",
    "[A-Z]*", "Rakefile"
  ].exclude(/database\.yml/).exclude(/[_\.]git$/).to_a

  s.has_rdoc = true
  s.extra_rdoc_files = %w( README )
  s.rdoc_options.concat ["--main",  "README"]

  s.add_development_dependency("rake", ">= 0.8.3")
  s.add_development_dependency("rspec", ">= 1.1.11")
  s.add_development_dependency("launchy", ">= 0.3.2")

  s.require_path = "lib"

  s.author = "Bob Aman"
  s.email = "bob@sporkmonger.com"
  s.homepage = "http://uuidtools.rubyforge.org/"
end