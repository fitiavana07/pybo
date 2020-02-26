venv:
	python3 -m venv .venv

requirements:
	.venv/bin/pip install -r requirements-dev.txt
	.venv/bin/pip install -r requirements.txt

hooks:
	.venv/bin/pre-commit install

.PHONY: venv requirements hooks
