init:
	pip install -r python-requirements.txt
	stack init
	stack build

build:
	stack exec site build
	@echo 'Build finished'

watch:
	stack exec site watch

publish: build
	ghp-import -n -c 'ayalog.com' -m "update site :book:" -b gh-pages ./_site
	git push origin gh-pages
	@echo 'Published'
