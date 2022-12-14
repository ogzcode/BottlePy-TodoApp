from bottle import run, route, template, get, post, request
import sqlite3
from sqlite3 import Error

def get_connection():
    conn = sqlite3.connect("db/data.db")

    return conn

def create_table():
    conn = get_connection()

    sql = "CREATE TABLE IF NOT EXISTS todo_table (id integer PRIMARY KEY, content char(100))"

    cur = conn.cursor()
    cur.execute(sql)
    cur.close()

def get_all_todo():
    conn = get_connection()

    cur = conn.cursor()
    cur.execute("SELECT * FROM todo_table")

    rows = cur.fetchall()
    cur.close()

    return rows

def add_todo(todo_data):
    conn = get_connection()

    sql = "INSERT INTO todo_table (id, content) VALUES (?,?)"

    c = conn.cursor()
    c.execute(sql, todo_data)
    conn.commit()

    c.close()

def get_last_id():
    conn = get_connection()

    cur = conn.cursor()
    cur.execute("SELECT max(id) FROM todo_table")

    id = cur.fetchone()

    return id[0]

def delete_table():
    conn = get_connection()

    sql = "DELETE FROM todo_table"
    c = conn.cursor()
    c.execute(sql)
    conn.commit()

    c.close()

def get_todo_with_id(id):
    conn = get_connection()

    sql = "SELECT * FROM todo_table WHERE id = ?"

    cur = conn.cursor()
    cur.execute(sql, id)

    row = cur.fetchone()
    cur.close()

    return row

def delete_todo(id):
    conn = get_connection()

    sql = "DELETE FROM todo_table WHERE id = ?"

    curr = conn.cursor()
    curr.execute(sql, id)
    conn.commit()

    curr.close()

@route("/")
@route("/home")
def home_page():
    create_table()
    rows = get_all_todo()
    return template("views/home.tpl", rows=rows)

@get("/new")
def new_item_page():
    return template("views/new.tpl", display=False)

@post("/new")
def new_item():
    display = None
    content = request.forms.get("input")

    if content:
        display = True

    id = get_last_id()

    if not id:
        id = 1
    else:
        id += 1

    add_todo((id, content))

    return template("views/new.tpl", display=display)

@get("/delete/:no")
def delete_get(no):
    todo = get_todo_with_id(no)

    return template("views/delete.tpl", todo=todo)

@post("/delete/:no")
def delete_post(no):
    if request.forms.get("yes"):
        delete_todo(no)

    return template("views/delete.tpl", todo=None)


run(debug=True, reloader=True)