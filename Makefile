run:
	pipenv install
	git checkout master pipenv
	git checkout master docs

	cd docs
	pipenv run $(MAKE) -C docs html
	mv docs/_build/html/* .

	rm -fr pipenv
	rm -fr docs

	git add -A
	git commit -m 'docs update'
	git push origin gh-pages