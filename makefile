# scripts to rule them all
bootstrap:
	# assumptions:
	# - a ruby environment
	# on Mac, I had to instal nokogiri using:
	# bundle config build.nokogiri -v '1.8.1' --use-system-libraries
	# bundle install
	echo "2.3.0" > .ruby-version
	gem install bundler
	bundle install
setup: bootstrap
update: bootstrap
server:
	bundle exec middleman server
test: 
	bundle exec middleman build
cibuild:
	bundle exec middleman build
console: server
deploy: test
	bundle exec middleman deploy
