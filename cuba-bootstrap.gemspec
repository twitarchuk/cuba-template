Gem::Specification.new do |gem|
  gem.name    = 'cuba-bootstrap'
  gem.version = 1.0
  gem.license = 'MIT'
  gem.date    = Date.today.to_s

  gem.summary = 'Cuba Bootstrap'
  gem.description = 'Template for web application based on Cuba microframework'

  gem.authors  = ['Anton Kozik']
  gem.email    = 'pazitron@gmail.com'
  gem.homepage = 'http://github.com/twitarchuk/cuba-bootstrap'

  gem.add_dependency 'rack',             '~> 2.0'
  gem.add_dependency 'cuba',             '~> 3.9'
  gem.add_dependency 'tilt',             '~> 2.0'

  gem.add_development_dependency 'cutest',     '~> 1.2'
  gem.add_development_dependency 'rack-test',  '~> 0.7'

  # ensure the gem is built out of versioned files
  gem.files = Dir['{assets,views}/**/*','README*','LICENSE*','application.rb','config.ru'] & `git ls-files -z`.split("\0")
end
