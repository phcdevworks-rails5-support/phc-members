[![security](https://hakiri.io/github/PHCNetworks/phc-members/master.svg)](https://hakiri.io/github/PHCNetworks/phc-members/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-members/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-members)
[![Gem Version](https://badge.fury.io/rb/phcmembers.svg)](https://badge.fury.io/rb/phcmembers)

### PHC-Members (Membership Application) Documentation
PHCMembers helps you manage your members and membership directory.

#### Step 1 - Add PHC-Members to your gemfile  

	gem 'phcmembers', '~> 0.6.2'
	bundle exec install  

#### Step 2 - Add database migration files  

	rake railties:install:migrations  
	rake db:migrate  

#### Step 3 - Mount PHC-Members in your Routes File  
Mount the Engine in your Routes File

	mount Phcmembers::Engine, :at => '/'  

#### Step 4 - Generate Views  
Generate views for customization and app integration.  

	rails generate phcmembers:views

#### Step 5 - Recompile Assets  
PHC-Members UI requires bootstrap and fontawesome to operate.  

	rake assets:clobber
	rake assets:precompile  
