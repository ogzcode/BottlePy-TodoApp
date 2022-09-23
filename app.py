from bottle import run, route, template

@route("/")
@route("/home")
def home_page():
    return template("views/home.tpl", rows=None)

run(debug=True, reloader=True)