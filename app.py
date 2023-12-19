from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello ():
  return 'Silahkan buka url di tab baru dan input /welcome/nama_anda untuk menampilkan pesan...!!!'

@app.route('/welcome/<name>')
def welcome_name(name):
  return 'welcome ' + name + '!'

if __name__ == '__main__':
  app.run(host='0.0.0.0', port=5000)
