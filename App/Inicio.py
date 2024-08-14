from flask import Flask,render_template,request,redirect, url_for

app = Flask(__name__)

@app.route('/')
def index():
    ra = '12345619'
    return render_template ('index.html')

@app.route('/novoaluno')
def cadastrar_aluno():
    return render_template('novoaluno.html')

@app.route('/logar', methods=['POST'])
def logar():
    ra = request.form.get('ra')
    
    if ra == '12345619':
        return redirect(url_for('diario_bordo'))
    
    else:
        mensagem = "RA invalido"
        return render_template('index.html', mensagem=mensagem)


@app.route('/diariobordo')
def diario_bordo():
    return render_template('diariobordo.html')

if __name__ == '__main__':
    app.run(debug=True)
