.PHONY: init

init:
	# requires Node 16
	# create app
	echo gitops-backstage | npx @backstage/create-app
	# init the repo & init the stacked git
	( cd  gitops-backstage && git init  && git branch -m main )
	( cd  gitops-backstage && git add . && git commit -s -am "init" )
	( cd  gitops-backstage && stg init )

.PHONY: apply-patches

apply-patches:
	( cd gitops-backstage && stg import -t --series ../patches/series )

.PHONY: export-patches

export-patches:
	( cd gitops-backstage && stg push --all || stg export -n -p -d ../patches )
