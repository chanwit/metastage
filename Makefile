.PHONY init

init:
	# use Node 16
	nvm use 16
	# create app
	npx @backstage/create-app
