# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'ts-delayed-delta'
  s.version     = '2.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Pat Allan']
  s.email       = ['pat@freelancing-gods.com']
  s.homepage    = 'http://github.com/pat/ts-delayed-delta'
  s.summary     = %q{Thinking Sphinx - Delayed Deltas}
  s.description = %q{Manage delta indexes via Delayed Job for Thinking Sphinx}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f|
    File.basename(f)
  }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'thinking-sphinx',               '>= 1.5.0'
  s.add_runtime_dependency 'delayed',                        '>= 0.5'
  s.add_runtime_dependency 'activerecord',                  '>= 2.0'

  s.add_development_dependency 'appraisal',                 '~> 0.5.2'
  s.add_development_dependency 'combustion',                '~> 0.4.0'
  s.add_development_dependency 'database_cleaner',          '~> 0.7.1'
  s.add_development_dependency 'mysql2',                    '~> 0.3.18'
  s.add_development_dependency 'pg',                        '~> 0.11.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec',                     '~> 2.11'
end
