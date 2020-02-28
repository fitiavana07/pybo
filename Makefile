all: venv requirements hooks

venv:
	python3 -m venv .venv

requirements:
	.venv/bin/pip install -U pip
	.venv/bin/pip install -r requirements-dev.txt
	.venv/bin/pip install -r requirements.txt

hooks:
	.venv/bin/pre-commit install

test:
	.venv/bin/pytest

coverage:
	.venv/bin/coverage run -m pytest
	.venv/bin/coverage report


.PHONY: all venv requirements hooks test coverage
