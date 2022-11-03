import psycopg2
from flask import Flask, request, render_template
from markupsafe import escape
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)
db = "dbname=pdp user=postgres password=210613 "
conn = psycopg2.connect(db)
cur = conn.cursor()

@app.route('/')
def hello():
    name = request.args.get("name", "World")
    return f'Hello, {escape(name)}!'

@app.route('/test/')
def test():
    try:
        cur.execute("""SELECT title from video""")
        rows = cur.fetchall()
        response = ''
        my_list = []
        for row in rows:
            my_list.append(row[0])

        return render_template('index.html',  my_list=my_list)
    except Exception as e:
        print(e)
        return 'error'