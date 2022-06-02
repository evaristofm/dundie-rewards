.PHONY: install virtualenv ipython test pflake8 black


install:
	@echo "Installing for dev enviroment"
	@.venv/Scripts/python -m pip install -e .[dev]

virtualenv:
	@.venv/Scripts/python -m pip -m venv .venv

ipython:
	@.venv/Scripts/ipython

test:
	@.venv/Scripts/pytest -vv -s tests/

fmt:
	@.venv/Scripts/isort dundie tests integration
	@.venv/Scripts/black dundie tests integration

lint:
	@.venv/Scripts/pflake8

watch:
	@.venv/Scripts/ptw -- -vv -s tests/
