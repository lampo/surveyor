# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "surveyor/version"

Gem::Specification.new do |s|
  s.name = %q{surveyor}
  s.version = Surveyor::VERSION

  s.authors = ["Brian Chamberlain", "Mark Yoon"]
  s.email = %q{yoon@northwestern.edu}
  s.homepage = %q{http://github.com/NUBIC/surveyor}
  s.post_install_message = %q{Thanks for using surveyor! Remember to run the surveyor generator and migrate your database, even if you are upgrading.}
  s.summary = %q{A rails (gem) plugin to enable surveys in your application}

  s.files         = `git ls-files`.split("\n") - ['irb']
  s.test_files    = `git ls-files -- {test,spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rails', '>= 5.1')
  s.add_dependency('mini_racer')
  s.add_dependency('haml')
  s.add_dependency('sass')
  s.add_dependency('formtastic')
  s.add_dependency('uuidtools', '~> 2.1')
  s.add_dependency('mustache', '~> 0.99')
  s.add_dependency('rabl', '~> 0.6')

  s.add_development_dependency('yard')
  s.add_development_dependency('rake')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('bundler')
  s.add_development_dependency('rspec-rails')
  s.add_development_dependency('capybara')
  s.add_development_dependency('launchy')
  s.add_development_dependency('poltergeist')
  s.add_development_dependency('json_spec')
  s.add_development_dependency('factory_bot')
  s.add_development_dependency('database_cleaner')
  s.add_development_dependency('rspec-retry')
  s.add_development_dependency('ramsey_cop')
end

