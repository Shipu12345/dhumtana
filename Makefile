VENV = venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip


.PHONY: run clean 

$(VENV)/bin/activate: requirements.txt
	python3 -m venv $(VENV)
	$(PIP) install -r requirements.txt

run: $(VENV)/bin/activate
	$(PYTHON) scripts/dhumtana.py

setup: $(VENV)/bin/activate
	

clean:
	rm -rf __pycache__
	rm -rf $(VENV)
