from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Olá, mundo! Sua aplicação Flask está rodando no Docker."

@app.route('/boasvindas')
def boas_vindas():
    return "Boa tarde! Bem-vindo à aplicação Flask."

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
