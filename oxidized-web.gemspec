Gem::Specification.new do |s|
  s.name              = 'oxidized-web'
  s.version           = '0.14.0'
  s.licenses          = %w[Apache-2.0]
  s.platform          = Gem::Platform::RUBY
  s.authors           = ['Saku Ytti', 'Samer Abdel-Hafez']
  s.email             = %w[saku@ytti.fi sam@arahant.net]
  s.homepage          = 'http://github.com/ytti/oxidized-web'
  s.summary           = 'sinatra API + webUI for oxidized'
  s.description       = 'puma+sinatra+haml webUI + REST API for oxidized'
  s.rubyforge_project = s.name
  s.files             = Dir['lib/oxidized/web/public/**/*']
  s.files += %x(git ls-files).split("\n")
  s.executables       = %w[]
  s.require_path      = 'lib'

  s.required_ruby_version =                       '>= 2.3'
  s.add_runtime_dependency 'charlock_holmes',     '~> 0.7.5'
  s.add_runtime_dependency 'emk-sinatra-url-for', '~> 0.2'
  s.add_runtime_dependency 'haml',                '~> 5.0'
  s.add_runtime_dependency 'htmlentities',        '~> 4.3'
  s.add_runtime_dependency 'oxidized',            '~> 0.26'
  s.add_runtime_dependency 'puma',                '~> 3.11.4'
  s.add_runtime_dependency 'sinatra',             '~> 2.0'
  s.add_runtime_dependency 'sinatra-contrib',     '~> 2.0'
  s.add_runtime_dependency 'json',                '>= 1.7.0'
  s.add_runtime_dependency 'rack-test',           '~> 0.7.0'

  s.add_development_dependency 'bundler',              '~> 2.0'
  s.add_development_dependency 'rails_best_practices', '~> 1.19'
  s.add_development_dependency 'rake',                 '~> 10.0'
  s.add_development_dependency 'rubocop',              '~> 1.48'
  s.add_development_dependency 'rubocop-rails',        '~> 2.18'
end
