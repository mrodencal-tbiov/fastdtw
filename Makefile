install:
	#install commands
	pip install --upgrade pip &&\
		pip install --no-cache-dir -r requirements.txt
format:
	#format code
	black *.py fastdtw/ *.py
lint:
	pylint --disable=R,C *.py fastdtw/ *.py 
test:
	#python -m pytest --cov-report term-missing -vv --cov=tbiov test_signal_quality_checker.py
build:
	#build container
deploy:
	#deploy
all: install format lint test deploy