# scripts to rule them all
bootstrap:
	# assumptions:
	# - a ruby environment
	echo "2.5" > .ruby-version
	gem install bundler --version 1.17.3
	bundle _1.17.3_ install
setup: bootstrap
update: bootstrap
server:
	bundle _1.17.3_ exec middleman server
test: cibuild
cibuild:
	bundle _1.17.3_ exec middleman build
console: server
deploy: test
	bundle _1.17.3_ exec middleman deploy
	git add . --all 
	git ci -a 
	git push --all
build-verbose:
	bundle _1.17.3_ exec middleman build --verbose
