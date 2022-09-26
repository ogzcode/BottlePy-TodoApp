from bottle import run, route, template, get

@route("/")
@route("/home")
def home_page():
    return template("views/home.tpl", rows=None)

@get("/new")
def new_item_page():
    return template("views/new.tpl", display=False)

run(debug=True, reloader=True)