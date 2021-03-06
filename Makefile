.DEFAULT_GOAL := help

help:
	@echo "help here"

release:
	@git checkout master
	@git merge develop --no-ff
	@git push origin master
	@git push origin master --tags
	@git checkout develop
	@git push origin develop
	@git push origin develop --tags

major:
	@bumpversion major

minor:
	@bumpversion minor

patch:
	@bumpversion patch

.PHONY: help release major minor patch
