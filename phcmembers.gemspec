$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "phcmembers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|

	spec.name        = "phcmembers"
	spec.version     = Phcmembers::VERSION
	spec.authors     = ["BradPotts"]
	spec.email       = ["info@phcnetworks.net"]
	spec.homepage    = "http://phcnetworks.net/engine-yard"
	spec.summary     = "Membership & Directory Manager Engine"
	spec.description = "PHCMembers(2) is a membership & directory management gem built for PHCMembers application."
	spec.license     = "GPL-3.0"

	spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

	# Main Dependencies
	spec.add_dependency 'rails', '~> 4.2', '>= 4.2.6'
	spec.add_dependency 'phcnotifi', '~> 2.6', '>= 2.6.8'
	spec.add_dependency 'phctitleseo', '~> 2.0'

	# UI & Frontend Elements
	spec.add_dependency 'jquery-rails', '~> 4.1', '>= 4.1.1'
	spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
	spec.add_dependency 'font-awesome-rails', '~> 4.6', '>= 4.6.3.0'
	spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.4'
	spec.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'
	spec.add_dependency 'country_select', '~> 2.5', '>= 2.5.2'
	
	# API and Rabl
	spec.add_dependency 'oj', '~> 2.15'
	spec.add_dependency 'rabl', '~> 0.12.0'

	# Development & Testing Dependencies
	spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.11'
	spec.add_development_dependency 'database_cleaner', '~> 1.5', '>= 1.5.1'

	spec.add_development_dependency 'factory_girl_rails', '~> 4.7'
	spec.add_development_dependency 'rspec-rails', '~> 3.4', '>= 3.4.2'
	spec.add_development_dependency 'capybara', '~> 2.7', '>= 2.7.1'

	spec.add_development_dependency 'better_errors', '~> 2.1', '>= 2.1.1'
	spec.add_development_dependency 'binding_of_caller', '~> 0.7.2'

	spec.add_development_dependency 'faker', '~> 1.6', '>= 1.6.3'
	spec.add_development_dependency 'selenium-webdriver', '~> 2.53'

end
