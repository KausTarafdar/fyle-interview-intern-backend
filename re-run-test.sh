export FLASK_APP=core/server.py
m core/store.sqlite3
flask db upgrade -d core/migrations/
# pytest -vvv -s tests/
pytest --cov
