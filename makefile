# makefile

setup:
	python3 -m venv ../.MLOpsAI
	# Run this command manually
	# source ../.MLOpsAI/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	
test:
	python3 -m pytest -vv -cov=hello hello_test.py

lint:
	pylint --disable=R,C test/*.py model/*.py

all : setup install lint test