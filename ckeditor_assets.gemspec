$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ckeditor_assets/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ckeditor_assets"
  s.version     = CkeditorAssets::VERSION
  s.authors     = ["owyatt"]
  s.email       = ["mail@oscarwyatt.co.uk"]
  s.homepage    = "https://www.ticketsignite.com"
  s.summary     = "Copies ckeditor assets to public"
  s.description = "Copies stuff"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.11.1"

  s.add_development_dependency "sqlite3"
end
