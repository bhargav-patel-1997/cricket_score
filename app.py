from flask import Flask, render_template, request, redirect, url_for, session

app = Flask(__name__)
app.secret_key = 'my_secret_key'

users = {}  # Dictionary to store user details
match_data = {}  # Dictionary to store match details


@app.route('/', methods=['GET', 'POST'])
def hello_world():
    return render_template("index.html")


@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        firstname = request.form.get('firstname')
        lastname = request.form.get('lastname')
        username = request.form.get('username')
        password = request.form.get('password')
        contact = request.form.get('contact')

        # Save user details in the 'users' dictionary
        users[username] = {
            'firstname': firstname,
            'lastname': lastname,
            'password': password,
            'contact': contact
        }

        return redirect(url_for('hello_world'))
    return render_template('register.html')


@app.route('/new_login', methods=['POST'])
def new_login():
    admin_user = "admin"
    admin_pass = "123"

    login_username = request.form.get('login_username')
    login_password = request.form.get('login_password')

    # Admin login check
    if admin_user == login_username and admin_pass == login_password:
        return redirect(url_for('admin'))

    # Regular user login check
    if login_username in users and users[login_username][
        'password'] == login_password:
        # Check if 'latest_match' exists in match_data before accessing it
        if 'latest_match' in match_data:
            match_details = match_data['latest_match']
            session['match_details'] = match_details
        else:
            session['match_details'] = None

        return redirect(url_for('score_view'))

    return redirect(url_for('hello_world'))


@app.route('/score_view')
def score_view():
    match_details = session.get('match_details', None)
    return render_template('cric_score.html', match_details=match_details)


@app.route('/admin', methods=['GET', 'POST'])
def admin():
    if request.method == 'POST':
        teamA = request.form.get('teamA')
        teamB = request.form.get('teamB')
        batsmanA = request.form.get('batsmanA')
        batsmanB = request.form.get('batsmanB')
        bowler = request.form.get('bowler')
        commentary = request.form.get('commentary')
        runs = request.form.get('runs')
        overs = request.form.get('overs')
        wickets = request.form.get('wickets')

        # Save match details to dictionary
        match_data['latest_match'] = {
            'team_a': teamA,
            'team_b': teamB,
            'batsman_1': batsmanA,
            'batsman_2': batsmanB,
            'bowler': bowler,
            'commentary': commentary,
            'runs': runs,
            'overs': overs,
            'wickets': wickets
        }

        return redirect(
            url_for('admin'))  # Redirect back to the admin page after saving

    return render_template('admin.html')


if __name__ == '__main__':
    app.run(debug=True)
