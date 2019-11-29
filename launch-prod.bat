set FLASK_APP=src
set FLASK_ENV=production
flask init-db
set SECRET_KEY=`python -c "import os; print(os.urandom(16))"`
waitress-serve --call src:create_app