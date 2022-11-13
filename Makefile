.PHONY: init

init:
	# requires Node 16
	# create app
	echo gitops-backstage | npx @backstage/create-app
