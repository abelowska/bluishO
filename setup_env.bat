@echo off
setlocal
python -m venv venv
venv\Scripts\activate.bat
pip install wheel
pip install -r requirements.txt
python -m ipykernel install --user --name=bluish
pip install pre-commit
pre-commit install
deactivate